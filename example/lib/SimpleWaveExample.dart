import 'package:flutter/material.dart';

import 'SimpleWaterWave.dart';
import 'SimpleWaveFullScreen.dart';
import 'SimpleWaveInBox.dart';
import 'SimpleWavePlayground.dart';

class SimpleWaveExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Wave"),
      ),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          itemView(
            context,
            "Simple Wave in Box",
            SimpleWaveInBox(),
          ),
          SizedBox(
            height: 16,
          ),
          itemView(
            context,
            "Simple Wave Full Screen",
            SimpleWaveFullScreen(),
          ),
          SizedBox(
            height: 16,
          ),
          itemView(
            context,
            "Simple Wave Playground",
            SimpleWavePlayground(),
          ),
          SizedBox(
            height: 16,
          ),
          itemView(
            context,
            "Simple Water Wave",
            SimpleWaterWave(),
          ),
        ],
      ),
    );
  }

  Widget itemView(BuildContext context, String text, Widget navigate) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return navigate;
            },
          ),
        );
      },
      child: Text(
        text,
        style: TextStyle(),
      ),
    );
  }
}
