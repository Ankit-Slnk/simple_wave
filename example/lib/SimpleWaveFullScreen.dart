import 'package:flutter/material.dart';
import 'package:simple_wave/simple_wave.dart';

class SimpleWaveFullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Wave Full Screen"),
      ),
      body: SimpleWaveWidget(),
    );
  }
}
