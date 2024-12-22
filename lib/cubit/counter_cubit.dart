import 'package:basketball_counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial()); // Initialize with CounterA state
  int teamApoints = 0;

  int teamBpoints = 0;
  void TeamIncrement({required int buttonNumber, required String team}) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterA());
    } else {
      teamBpoints += buttonNumber;
      emit(CounterB());
    }
  }

  void resetPoints() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterInitial()); // Emit initial or a new Reset state
  }
}
