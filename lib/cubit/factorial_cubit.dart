import 'package:flutter_bloc/flutter_bloc.dart';

class FactorialCubit extends Cubit<int> {
  FactorialCubit() : super(1);

  void calculateFactorial(int number) {
    if (number < 0) {
      emit(-1); // Negative numbers don't have a factorial
      return;
    }
    int result = 1;
    for (int i = 1; i <= number; i++) {
      result *= i;
    }
    emit(result);
  }
}
