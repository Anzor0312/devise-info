package com.example.urllouncher

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.content.Context
import android.provider.Settings
import android.os.Build
class MainActivity: FlutterFragmentActivity() {
    private val CHANNEL = "device_info"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getAndroidDeviceName") {
                val deviceName = android.os.Build.MODEL
                result.success(deviceName)
            }else if (call.method == "getAndroidSystemVersion") {
                val systemVersion = android.os.Build.VERSION.RELEASE
                result.success(systemVersion)
            }else {
                result.notImplemented()
            }
        }
    }
}
