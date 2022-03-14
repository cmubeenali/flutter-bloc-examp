import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}
class CounterIncrementPressed extends CounterEvent {}
class CounterDecrementPressed extends CounterEvent {}

class CounterState{
  int currentValue=0;
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<CounterIncrementPressed>((event, emit) {      
      final clsState=CounterState();
      clsState.currentValue=state.currentValue+1;
      emit(clsState);
    });
    on<CounterDecrementPressed>((event, emit){
      final clsState=CounterState();
      clsState.currentValue=state.currentValue-1;
      emit(clsState);
    });
  }
}