import 'package:counterapp/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'events/counter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Stream<int> aStreamFunction() async* {
  //   yield trả về đc nhiều lần.
  //   yield 2;
  //   yield 5;
  //   yield 6;
  // }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Demo',
      home: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: CounterPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}