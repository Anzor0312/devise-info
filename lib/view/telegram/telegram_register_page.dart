import 'package:flutter/material.dart';
import 'package:urllouncher/device%20info/device_info_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              DeviceInfoService().deviceInfo();
            },
            child: Text("Device")),
      ),
    );
  }
}
