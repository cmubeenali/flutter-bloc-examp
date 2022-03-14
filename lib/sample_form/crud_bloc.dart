import 'package:bloc_example/sample_form/crud_events.dart';
import 'package:bloc_example/sample_form/crud_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'crud_state.dart';

class CrudBloc extends Bloc<CrudEvent,CrudState>{
  CrudBloc():super(CrudState()){
    on<CrudSwitchWidget>((event,emit){
      final clsCrudState=CrudState();
      if(state.currentState==0){
        clsCrudState.currentWidget="New Widget";
        clsCrudState.currentState=1;
      }else if(state.currentState==1){
        clsCrudState.currentState=0;
        clsCrudState.currentWidget="Default Widget";
      }
      emit(clsCrudState);
    });
  }

}