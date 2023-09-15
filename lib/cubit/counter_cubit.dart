
import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit <CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamIncrement({required String Team, required int buttonNumber}) {
    if (Team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}