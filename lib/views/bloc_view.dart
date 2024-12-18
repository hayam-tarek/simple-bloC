import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_to_apply_bloc/bloc/counter_bloc.dart';

class BlocView extends StatelessWidget {
  const BlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter using Bloc'),
      ),
      body: BlocProvider(
        create: (context) => CounterBloc(),
        child: Builder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(
                    BlocProvider.of<CounterBloc>(context).counter.toString(),
                    style: const TextStyle(fontSize: 100),
                  );
                },
              ),
              const Spacer(),
              MaterialButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context)
                      .add(const IncrementEvent());
                },
                color: Colors.green,
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: double.infinity,
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context)
                      .add(const DecrementEvent());
                },
                color: Colors.red,
                child: const Icon(Icons.minimize),
              ),
              const Spacer(),
            ],
          );
        }),
      ),
    );
  }
}
