import 'dart:math';

import 'package:flutter/material.dart';

class SimpleWaveWidget extends StatefulWidget {
  Color waveColor;
  double amplitude;
  double waveWidth;
  double waveHeight;
  int waveMilliseconds;

  SimpleWaveWidget({
    this.waveColor = Colors.white,
    this.amplitude = 10,
    this.waveWidth,
    this.waveHeight,
    this.waveMilliseconds = 1000,
  });

  @override
  _WaveWidgetState createState() => _WaveWidgetState();
}

class _WaveWidgetState extends State<SimpleWaveWidget>
    with TickerProviderStateMixin {
  AnimationController _animationController;

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
          width: widget.waveWidth ?? MediaQuery.of(context).size.width,
          height: widget.waveHeight ?? MediaQuery.of(context).size.height / 3,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (BuildContext context, Widget child) {
              return CustomPaint(
                painter: WaveWidgetPainter(
                  animation: _animationController,
                  waveColor: widget.waveColor,
                  amplitude: widget.amplitude,
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

  WaveWidgetPainter({
    @required this.animation,
    @required this.waveColor,
    @required this.amplitude,
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
        sin((i / size.width * 3 * pi) + (animation.value * 2 * pi)) * amplitude,
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
