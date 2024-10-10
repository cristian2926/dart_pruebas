import 'dart:io';

void main() {
  final suma = Suma();
  final resta = Resta();
  final multiplicacion = Multiplicacion();


  // Solicitar los números al usuario
  print('Ingrese el primer número:');
  double numero1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  double numero2 = double.parse(stdin.readLineSync()!);

  // Realizar las operaciones básicas
  print('Suma: ${operacionMatematica(suma, numero1, numero2)}');
  print('Resta: ${operacionMatematica(resta, numero1, numero2)}');
  print('Multiplicación: ${operacionMatematica(multiplicacion, numero1, numero2)}');
}

double operacionMatematica(Operacion operacion, double a, double b) {
  return operacion.calcular(a, b);
}

abstract class Operacion {
  double calcular(double a, double b);
}

class Suma implements Operacion {
  @override
  double calcular(double a, double b) => a + b;
}

class Resta implements Operacion {
  @override
  double calcular(double a, double b) => a - b;
}

class Multiplicacion implements Operacion {
  @override
  double calcular(double a, double b) => a * b;
}

