import 'package:flutter/material.dart';

class CustomKeyboard extends StatefulWidget {
  const CustomKeyboard({super.key});

  @override
  _CustomKeyboardState createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  String inputText = '';

  void _handleKeyTap(String key) {
    setState(() {
      inputText += key;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Keyboard Example'),
      ),
      body: Column(
        children: [
          // Input field where you want to display the text
          TextField(
            controller: TextEditingController(text: inputText),
          ),
          // Custom keyboard UI
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => _handleKeyTap('1'),
                child: Container(
                  width: 50,
                  height: 50,
                  // Customize your key appearance here
                  child: Text('1'),
                ),
              ),
              GestureDetector(
                onTap: () => _handleKeyTap('2'),
                child: Container(
                  width: 50,
                  height: 50,
                  // Customize your key appearance here
                  child: Text('2'),
                ),
              ),
              // Add more keys as needed
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        deleteKeyboart(inputText);
        print(inputText);
      }),
    );
  }

  void deleteKeyboart(String inputText) {
    setState(() {
      inputText = inputText.substring(0, inputText.length - 1);
    });
  }
}
