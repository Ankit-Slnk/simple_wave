import 'dart:math';

import 'package:flutter/material.dart';

class SimpleWaveWidget extends StatefulWidget {
  final Color waveColor;
  final double amplitude;
  final double waveWidth;
  final double waveHeight;
  final int waveMilliseconds;
  final int numberOfWave;

  const SimpleWaveWidget({
    required this.waveWidth,
    required this.waveHeight,
    this.waveColor = Colors.white,
    this.amplitude = 10,
    this.waveMilliseconds = 1000,
    this.numberOfWave = 3,
  });

  @override
  _WaveWidgetState createState() => _WaveWidgetState();
}

class _WaveWidgetState extends State<SimpleWaveWidget>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.waveMilliseconds),
    );

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Container(
          width: widget.waveWidth,
          height: widget.waveHeight,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (BuildContext context, Widget? child) {
              return CustomPaint(
                painter: WaveWidgetPainter(
                  animation: _animationController,
                  waveColor: widget.waveColor,
                  amplitude: widget.amplitude,
                  numberOfWave: widget.numberOfWave,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class WaveWidgetPainter extends CustomPainter {
  Animation<double> animation;
  Color waveColor;
  double amplitude;
  int numberOfWave;

  WaveWidgetPainter({
    required this.animation,
    required this.waveColor,
    required this.amplitude,
    required this.numberOfWave,
  });

  @override
  void paint(Canvas canvas, Size size) {
    /// Draw wave
    Paint wavePaint = new Paint()..color = waveColor;

    Path path = Path();
    path.moveTo(0.0, 0.0);
    for (double i = 0.0; i < size.width; i++) {
      path.lineTo(
        i,
        sin((i / size.width * numberOfWave * pi) + (animation.value * 2 * pi)) *
            amplitude,
      );
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    canvas.drawPath(path, wavePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
