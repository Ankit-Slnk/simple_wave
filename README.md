# simple_wave

[![pub package](https://img.shields.io/pub/v/simple_wave.svg)](https://pub.dev/packages/simple_wave)

A Flutter plugin for wave animation.

## Usage

To use this plugin, add `simple_wave` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages/).

## Example

Import the library.

``` dart
import 'package:simple_wave/simple_wave.dart';
```

Then invoke the `SimpleWaveWidget` method to create simple wave.

``` dart
SimpleWaveWidget()
```

The `SimpleWaveWidget` method also takes optional `waveWidth`, `waveHeight`, `waveColor`, `amplitude`, `waveMilliseconds` arguments.

``` dart
SimpleWaveWidget(
    waveWidth: 300, // this changes width of wave
    waveHeight: 150, // this changes height of wave
    waveColor: Colors.blue, // this changes color of wave
    amplitude: 50, // this changes height of wave
    waveMilliseconds: 5000, //this changes speed of wave
)
```

Checkout [this package demo](https://flutter-web-wave.netlify.app/#/) in [Flutter Web](https://flutter.dev/docs/get-started/web).