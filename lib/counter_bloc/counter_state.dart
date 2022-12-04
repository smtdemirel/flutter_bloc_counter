part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  const CounterState({required this.counter});

  final int counter;
}

class CounterInitialState extends CounterState {
  const CounterInitialState({required super.counter});
}

class CounterIncrementState extends CounterState {
  const CounterIncrementState({required super.counter});
}

class CounterDecrementState extends CounterState {
  const CounterDecrementState({required super.counter});
}
