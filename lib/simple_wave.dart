import 'dart:async';

import 'package:flutter/services.dart';

export 'src/SimpleWave.dart';

class SimpleWave {
  static const MethodChannel _channel = const MethodChannel('simple_wave');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
