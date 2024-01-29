/* Anzor Ravshanov
01.06.2023*/

import 'package:flutter/material.dart' show ChangeNotifier, Navigator;

class SetPinCodeProvider extends ChangeNotifier {
  String inputText = "";
  List<bool> actives = [false, false, false, false];
  int currentIndex = 0;
  String pinCode = "";
  List<bool> confirmation = [false, false, false, false];
  int pinIndex = 0;
  bool error = true;
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    0,
  ];

  void pinCodeEnter(int index, context) {
    error = true;
    if (index == 11) {
      if (inputText.isNotEmpty && pinCode.isEmpty) {
        inputText = inputText.substring(0, inputText.length - 1);
        currentIndex--;
        if (currentIndex >= 0) {
          actives[currentIndex] = false;
        } else {
          currentIndex = 0;
        }
      } else if (inputText.length == 4 && pinCode.isNotEmpty) {
        pinCodeConfirmation(index, context);
      }
    } else {
      if (inputText.length < 4) {
        inputText += numbers[index == 10 ? index - 1 : index].toString();
        actives[currentIndex] = true;
        currentIndex++;
      } else if (inputText.length == 4 && pinCode.length < 4) {
        actives = actives.map((e) => true).toList();
        pinCodeConfirmation(index, context);
      }
    }
    notifyListeners();
  }

  void pinCodeConfirmation(int index, context) {
    if (index == 11) {
      if (pinCode.isNotEmpty) {
        pinCode = pinCode.substring(0, pinCode.length - 1);
        pinIndex--;
      }
      if (pinIndex >= 0) {
        confirmation[pinIndex] = false;
      } else {
        pinIndex = 0;
      }
    } else {
      if (pinCode.length < 4) {
        pinCode += numbers[index == 10 ? index - 1 : index].toString();
        confirmation[pinIndex] = true;
        pinIndex++;
      }
      if (pinCode.length == 4) {
        if (pinCode.contains(inputText)) {
          // Navigator.pushNamedAndRemoveUntil(
          //     context, 'biometrics', (route) => false);
        } else {
          error = pinCode.contains(inputText);
          inputText = "";
          pinIndex = 0;
          pinCode = "";
          currentIndex = 0;
          actives = actives.map((e) => false).toList();
          confirmation = confirmation.map((e) => false).toList();
        }
      }
    }
  }
}
