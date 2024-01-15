// ignore_for_file: deprecated_member_use, unused_element


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  void initState() {
    super.initState();
    // Check for phone call support.
   
  }

  
    @override
  Widget build(BuildContext context) {
   
void openSmsApp(String text) async {
  String uri = 'sms:?body=$text';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

// Open Telegram app
void openTelegramApp(String text) async {
  String uri = 'https://t.me/Avazbek_709';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

// Open WhatsApp app
void openWhatsAppApp(String text) async {
  String uri = 'whatsapp://send?text=$text';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

// Open Email app
void openEmailApp(String text) async {
  String uri = 'mailto:?body=$text';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 54,
          child: ElevatedButton(onPressed: (){
            openTelegramApp("salom");
          }, child: const Text("Telegram")),
        ),
      ),
    );
  }
}