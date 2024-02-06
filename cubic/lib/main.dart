import 'package:cubic/cubic/counter_cubit.dart';
import 'package:cubic/cubic/network_loading_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(create: (_) => CounterCubit()),
        BlocProvider<NetworkLoadingCubit>(create: (_) => NetworkLoadingCubit()),
      ],
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
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  BlocProvider.of<NetworkLoadingCubit>(context).Loading();
                }, child: Text('Loading')),
                SizedBox(width: 10.0,),
                ElevatedButton(onPressed: (){
                  BlocProvider.of<NetworkLoadingCubit>(context).Success();
                }, child: Text('Success')),
                SizedBox(width: 10.0,),
                ElevatedButton(onPressed: (){
                  BlocProvider.of<NetworkLoadingCubit>(context).Fail();
                }, child: Text('Fail')),
                SizedBox(width: 10.0,),
              ],
            ),
            BlocBuilder<NetworkLoadingCubit, NetworkLoadingState>(
                builder: (context,state){
                  if(state is NetworkSuccess){
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.data.length,
                          itemBuilder: (_, index){
                          return Center(child: Text('Item ${state.data[index]}'));
                          }
                      ),
                    );
                  }
                  else if(state is NetworkFailure){
                    return Text('Network Failure');
                  }
                  else{
                    return CircularProgressIndicator();
                  }
                }
            ),
          ],
        )
    );
  }
}



