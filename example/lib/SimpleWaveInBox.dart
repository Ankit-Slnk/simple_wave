import 'package:flutter/material.dart';
import 'package:simple_wave/simple_wave.dart';

class SimpleWaveInBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Wave in Box"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.orange,
          child: SimpleWaveWidget(
            waveWidth: 300, // this changes width of wave
            waveHeight: 150, // this changes height of wave
            waveColor: Colors.blue, // this changes color of wave
            amplitude: 50, // this changes height of wave
            waveMilliseconds: 5000, //this changes speed of wave
          ),
        ),
      ),
    );
  }
}
