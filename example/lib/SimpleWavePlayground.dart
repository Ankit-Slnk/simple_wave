import 'package:flutter/material.dart';
import 'package:simple_wave/simple_wave.dart';

class SimpleWavePlayground extends StatefulWidget {
  @override
  _SimpleWavePlaygroundState createState() => _SimpleWavePlaygroundState();
}

class _SimpleWavePlaygroundState extends State<SimpleWavePlayground> {
  double amplitude = 10;
  int r = 255;
  int g = 255;
  int b = 255;
  double waveHeight = 300;
  double waveWidth = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Wave Playground"),
      ),
      body: Stack(
        children: [
          SimpleWaveWidget(
            amplitude: amplitude,
            waveColor: Color.fromARGB(255, r, g, b),
            waveHeight: waveHeight,
            waveMilliseconds: 1000,
            waveWidth: waveWidth,
          ),
          body(),
        ],
      ),
    );
  }

  Widget body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          textView("Wave Amplitude"),
          Slider(
            min: 1,
            max: 100,
            value: amplitude,
            onChanged: (value) {
              amplitude = value;
              _notify();
            },
          ),
          textView("Wave Color"),
          Slider(
            activeColor: Colors.red,
            min: 1,
            max: 255,
            value: r.toDouble(),
            onChanged: (value) {
              r = value.toInt();
              _notify();
            },
          ),
          Slider(
            activeColor: Colors.green,
            min: 1,
            max: 255,
            value: g.toDouble(),
            onChanged: (value) {
              g = value.toInt();
              _notify();
            },
          ),
          Slider(
            activeColor: Colors.blue,
            min: 1,
            max: 255,
            value: b.toDouble(),
            onChanged: (value) {
              b = value.toInt();
              _notify();
            },
          ),
          textView("Wave Height"),
          Slider(
            min: 1,
            max: MediaQuery.of(context).size.height - 100,
            value: waveHeight,
            onChanged: (value) {
              waveHeight = value;
              _notify();
            },
          ),
          textView("Wave Width"),
          Slider(
            min: 1,
            max: MediaQuery.of(context).size.width,
            value: waveWidth,
            onChanged: (value) {
              waveWidth = value;
              _notify();
            },
          ),
        ],
      ),
    );
  }

  Widget textView(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _notify() {
    if (mounted) setState(() {});
  }
}
