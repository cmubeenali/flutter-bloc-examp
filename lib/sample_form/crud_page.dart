import 'package:bloc_example/sample_form/crud_bloc.dart';
import 'package:bloc_example/sample_form/crud_events.dart';
import 'package:bloc_example/sample_form/crud_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CrudPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('CRUD')),
      body: BlocBuilder<CrudBloc,CrudState>(builder: (context, state) {
        return state.currentState==0? Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${state.currentWidget}"),
              TextButton(
                onPressed: () => context.read<CrudBloc>().add(CrudSwitchWidget()), 
                child: Text("Switch Widget")
                ),
            ],
          ),
        ):state.currentState==1?Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${state.currentWidget}",style: TextStyle(color: Colors.red)),
              TextButton(
                onPressed: () => context.read<CrudBloc>().add(CrudSwitchWidget()), 
                child: Text("Switch Widget")
                ),
            ],
          ),
        ):SizedBox();
      },),
    );
  }
}