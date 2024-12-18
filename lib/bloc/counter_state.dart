part of 'counter_bloc.dart';

abstract class CounterState {
  const CounterState();
}

class CounterInitial extends CounterState {}

class CounterUpdated extends CounterState {}
