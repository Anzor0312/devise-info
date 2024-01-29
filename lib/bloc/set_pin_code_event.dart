// pin_code_bloc.dart
part of 'set_pin_code_state.dart';




abstract class PinCodeEvent extends Equatable {
  const PinCodeEvent();

  @override
  List<Object?> get props => [];
}

class PinCodeEnterEvent extends PinCodeEvent {
  final int index;

  const PinCodeEnterEvent(this.index);

  @override
  List<Object?> get props => [index];
}

class PinCodeConfirmationEvent extends PinCodeEvent {
  final int index;

  const PinCodeConfirmationEvent(this.index);

  @override
  List<Object?> get props => [index];
}
