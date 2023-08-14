import 'package:counterapp/events/counter_bloc.dart';
import 'package:counterapp/events/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.read<CounterBloc>();
    return Scaffold(
      body: SafeArea(
          child: BlocBuilder<CounterBloc, int>(
              builder: (context, counter) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                        'Two actions/event here',
                        style: TextStyle(fontSize: 25)
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.greenAccent),
                      margin: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          counterBloc.increment();
                        },
                        child: const Text(
                          'Increment (+)',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    Text('Result: $counter', style: const TextStyle(fontSize: 40, color: Colors.blue)),
                    Container(
                      decoration: const BoxDecoration(color: Colors.redAccent),
                      margin: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          counterBloc.decrement();
                        },
                        child: const Text(
                          'Decrement (-)',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                );
              }
          )
      ),
    );
  }
}