part of 'counter_cubit.dart';

class CounterState {
  int count;

  CounterState() : count = 0;

  CounterState init() {
    return CounterState()..count = 0;
  }

  CounterState clone() {
    return CounterState()..count = count;
  }
}
