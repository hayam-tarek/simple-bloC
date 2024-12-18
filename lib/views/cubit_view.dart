import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_to_apply_bloc/cubit/counter_cubit.dart';

class CubitView extends StatelessWidget {
  const CubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter using Cubit'),
      ),
      body: BlocProvider(
        create: (context) => CounterCubit(),
        child: Builder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text(
                    BlocProvider.of<CounterCubit>(context).counter.toString(),
                    style: const TextStyle(fontSize: 100),
                  );
                },
              ),
              const Spacer(),
              MaterialButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
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
                  BlocProvider.of<CounterCubit>(context).decrement();
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
