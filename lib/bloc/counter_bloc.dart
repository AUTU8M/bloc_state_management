import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementedEvent>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecrementedEvent>((event, emit) {
      if (state == 0) {
        return; // Prevent decrementing below zero
      }
      emit(state - 1);
    });
  }
}
