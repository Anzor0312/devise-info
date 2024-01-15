import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  private let CHANNEL = "device_info"

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let deviceInfoChannel = FlutterMethodChannel(name: CHANNEL,
                                                 binaryMessenger: controller.binaryMessenger)
    deviceInfoChannel.setMethodCallHandler({
      (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if call.method == "getIosDeviceName" {
                let deviceName = UIDevice.current.model
                result(deviceName)
            }else if call.method == "getIosSystemVersion" {
                let systemVersion = UIDevice.current.systemVersion
                result(systemVersion)
            }else {
                result(FlutterMethodNotImplemented)
            }
        }

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}