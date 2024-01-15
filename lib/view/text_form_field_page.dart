import 'package:flutter/material.dart';

class TextFormFieldPage extends StatefulWidget {
  const TextFormFieldPage({super.key});

  @override
  State<TextFormFieldPage> createState() => _TextFormFieldPageState();
}

class _TextFormFieldPageState extends State<TextFormFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: TextFormField(
          keyboardType: TextInputType.name,
          textCapitalization: TextCapitalization.words,
          // Other properties...
        ));
  }
}
