# simple_wave

[![pub package](https://img.shields.io/pub/v/simple_wave.svg)](https://pub.dev/packages/simple_wave)

<a href="https://www.producthunt.com/posts/simple_wave?utm_source=badge-featured&utm_medium=badge&utm_souce=badge-simple_wave" target="_blank"><img src="https://api.producthunt.com/widgets/embed-image/v1/featured.svg?post_id=296961&theme=light" alt="simple_wave - A Flutter plugin for wave animation. | Product Hunt" style="width: 250px; height: 54px;" width="250" height="54" /></a>

A Flutter plugin for wave animation.

![simple_wave](simple_wave.png)

![simple_wave](simple_wave.gif)

## Usage

To use this plugin, add [`simple_wave`](https://pub.dev/packages/simple_wave) as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages/).

## Example

Import the library.

``` dart
import 'package:simple_wave/simple_wave.dart';
```

Then invoke the `SimpleWaveWidget` method to create simple wave.

``` dart
SimpleWaveWidget(
    waveHeight: MediaQuery.sizeOf(context).height,
    waveWidth: MediaQuery.sizeOf(context).width,
)
```

The `SimpleWaveWidget` method takes required `waveWidth`, `waveHeight` and optional `waveColor`, `amplitude`, `waveMilliseconds` arguments.

``` dart
SimpleWaveWidget(
    waveWidth: 300, // this changes width of wave
    waveHeight: 150, // this changes height of wave
    waveColor: Colors.blue, // this changes color of wave
    amplitude: 50, // this changes height of wave
    waveMilliseconds: 5000, //this changes speed of wave
    numberOfWave: 10, //this changes number of waves
)
```

Checkout [this package demo](https://flutter-web-wave.netlify.app/#/) in [Flutter Web](https://flutter.dev/docs/get-started/web).

View [Medium story](https://ankit-solanki.medium.com/simple-wave-642028811e36)