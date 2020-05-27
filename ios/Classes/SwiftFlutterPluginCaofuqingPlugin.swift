import Flutter
import UIKit

public class SwiftFlutterPluginCaofuqingPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin_caofuqing", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPluginCaofuqingPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOScaofuqingaaaa " + UIDevice.current.systemVersion)
  }
}
