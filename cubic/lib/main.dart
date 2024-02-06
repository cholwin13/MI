import 'package:cubic/cubic/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Cubic'),
        ),
        body: Column(
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text('The Value is ${state}');
              },
            ),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                }, child: Text('Add')),
                SizedBox(width: 20.0,),
                ElevatedButton(onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                }, child: Text('Minus')),
              ],
            ),
          ],
        )
    );
  }
}



