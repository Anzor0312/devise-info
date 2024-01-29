import 'package:flutter_bloc/flutter_bloc.dart';

enum SwitchEvent { toggle }

class SwitchCubit extends Cubit<bool> {
  SwitchCubit() : super(false);

  void toggleSwitch() => emit(!state);
}