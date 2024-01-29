part of 'set_pin_code_state.dart';


class PinCodeBloc extends Bloc<PinCodeEvent, PinCodeState> {
  PinCodeBloc() : super(const PinCodeState(
    inputText: '',
    actives: [false, false, false, false],
    currentIndex: 0,
    pinCode: '',
    confirmation: [false, false, false, false],
    pinIndex: 0,
    error: true,
    numbers: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
  ));

  Stream<PinCodeState> mapEventToState(PinCodeEvent event) async* {
    // // Implement your logic here based on the events
    // if (event is PinCodeEnterEvent) {
    //   // Handle PinCodeEnterEvent
    //   // Update the state accordingly
    //   yield currentState; // Update this line with your logic
    // } else if (event is PinCodeConfirmationEvent) {
    //   // Handle PinCodeConfirmationEvent
    //   // Update the state accordingly
    //   yield currentState; // Update this line with your logic
    // }
  }
}
