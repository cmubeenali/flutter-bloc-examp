import 'package:bloc_example/bloc/counter.dart';
import 'package:bloc_example/bloc/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_)=>CounterBloc(),
        child: CounterPage(),
      ),
    );
  }
}