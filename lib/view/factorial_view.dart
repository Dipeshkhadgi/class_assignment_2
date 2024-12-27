import 'package:class_asignment_2/cubit/factorial_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactorialView extends StatelessWidget {
  const FactorialView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController numberController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Factorial Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: numberController,
              decoration: const InputDecoration(
                labelText: 'Enter a Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int number = int.tryParse(numberController.text) ?? 0;
                context.read<FactorialCubit>().calculateFactorial(number);
              },
              child: const Text('Calculate Factorial'),
            ),
            const SizedBox(height: 20),
            BlocBuilder<FactorialCubit, int>(
              builder: (context, state) {
                if (state == -1) {
                  return const Text(
                    'Factorial is not defined for negative numbers.',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  );
                }
                return Text(
                  'Factorial: $state',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
