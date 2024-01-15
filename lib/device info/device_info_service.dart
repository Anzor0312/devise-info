import 'dart:io' show Platform;

import 'package:flutter/services.dart' show MethodChannel;

class DeviceInfoService {
 Future<void> deviceInfo() async {
    String modelName = await DeviceInfoService.getDeviceName();
    String version = await DeviceInfoService.getSystemVersion();
    print("Model name: $modelName");
    print("SystemVersion: $version");

  }
  static MethodChannel mathodChannel = const MethodChannel('device_info');

  // app version
  static Future<String> getSystemVersion() async {
    String appVersion = '';
    if (Platform.isAndroid) {
      appVersion = await mathodChannel.invokeMethod('getAndroidSystemVersion');
    } else if (Platform.isIOS) {
      appVersion = await mathodChannel.invokeMethod('getIosSystemVersion');
    }
    return appVersion;
  }

  static Future<String> getDeviceName() async {
    String appName = "";
    if (Platform.isAndroid) {
      appName = await mathodChannel.invokeMethod('getAndroidDeviceName');
    } else if (Platform.isIOS) {
      appName = await mathodChannel.invokeMethod('getIosDeviceName');
    }
    return appName;
  }
}
