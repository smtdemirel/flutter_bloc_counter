import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_bloc_view.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitialState(counter: 0)) {
    on<CounterIncrementEvent>((event, emit) =>
        emit(CounterIncrementState(counter: state.counter + 1)));
    on<CounterDecrementEvent>((event, emit) =>
        emit(CounterDecrementState(counter: state.counter - 1)));
  }
}
