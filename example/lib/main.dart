import 'package:flutter/material.dart';
import 'package:simple_wave/simple_wave.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Wave Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: SimpleWaveExample(),
    );
  }
}

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
            numberOfWave: 10, //this changes number of waves
          ),
        ),
      ),
    );
  }
}

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
  int numberOfWave = 3;

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
            numberOfWave: numberOfWave,
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
          textView("Number of Waves"),
          Slider(
            min: 1,
            max: 100,
            value: numberOfWave.toDouble(),
            onChanged: (value) {
              numberOfWave = value.toInt();
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

class SimpleWaterWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Water Wave"),
      ),
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
