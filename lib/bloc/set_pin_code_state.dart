// pin_code_bloc.dart
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'set_pin_code_cobit.dart';
part 'set_pin_code_event.dart';

class PinCodeState {
  final String inputText;
  final List<bool> actives;
  final int currentIndex;
  final String pinCode;
  final List<bool> confirmation;
  final int pinIndex;
  final bool error;
  final List<int> numbers;

  const PinCodeState({
    required this.inputText,
    required this.actives,
    required this.currentIndex,
    required this.pinCode,
    required this.confirmation,
    required this.pinIndex,
    required this.error,
    required this.numbers,
  });

  // You might need to implement equality methods if you're using Equatable
}
