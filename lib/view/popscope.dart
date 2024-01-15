import 'package:flutter/material.dart';

class PopScopePage extends StatefulWidget {
  const PopScopePage({super.key});

  @override
  State<PopScopePage> createState() => _PopScopePageState();
}

class _PopScopePageState extends State<PopScopePage> {
  DateTime? lastPressedAt;
  bool didpop = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: didpop,
      onPopInvoked: (bool didPop) {
        if (didPop==false) {
          const SnackBar(
        content: Text("Press back again to exit"),
        duration: Duration(seconds: 2),
      );
        }
        print(count);
        setState(() {
          onPop();
        });
      },
      child: Scaffold(
        appBar: AppBar(),
      ),
    );
  }

  bool onPop() {
    if (count == 2) {
      didpop = true;
      return true;
    }
    if (count < 2) {
      count++;
      
      // Save the current time
      didpop = false;
      return false; // Do not exit the app
    } else {
      // Exit the app
      didpop = true;
      return true;
    }
  }
}
