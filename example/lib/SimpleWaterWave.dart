import 'package:flutter/material.dart';
import 'package:simple_wave/simple_wave.dart';

class SimpleWaterWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SimpleWaveWidget(
            waveColor: Colors.blue.withOpacity(0.7),
            amplitude: 20,
          ),
          SimpleWaveWidget(
            waveColor: Colors.blue.withOpacity(0.5),
            amplitude: 23,
            waveMilliseconds: 3000,
          ),
          SimpleWaveWidget(
            waveColor: Colors.blue,
            waveMilliseconds: 2500,
          )
        ],
      ),
    );
  }
}
