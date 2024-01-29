import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urllouncher/view%202/paymet.dart';
import 'package:urllouncher/view%202/set_password_page.dart';
import 'package:urllouncher/view/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaymontPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoSwitch with BLoC'),
      ),
      body: Center(
        child: BlocBuilder<SwitchCubit, bool>(
          builder: (context, state) {
            return CupertinoSwitch(
              activeColor: Colors.blue, // O'zgartirishingiz mumkin
              value: state,
              onChanged: (bool newValue) {
                context.read<SwitchCubit>().toggleSwitch();
              },
            );
          },
        ),
      ),
    );
  }
}
