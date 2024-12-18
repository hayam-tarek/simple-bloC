import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counter = 0;
  void increment() {
    counter++;
    emit(CounterUpdated());
  }

  void decrement() {
    counter--;
    emit(CounterUpdated());
  }
}
