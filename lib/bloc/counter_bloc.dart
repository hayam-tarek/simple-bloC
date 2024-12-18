import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<IncrementEvent>(
      (event, emit) {
        counter++;
        emit(CounterUpdated());
      },
    );
    on<DecrementEvent>(
      (event, emit) {
        counter--;
        emit(CounterUpdated());
      },
    );
  }
}
