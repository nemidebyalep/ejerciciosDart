
import 'dart:ffi';
import 'dart:math';

import 'Dart:io';

void main(List<String> arguments) {
   print("***** MENU PRINCIPAL  ****");
  print("[1] -> Primer Ejercicio");
  print("[2] -> Segundo Ejercicio");
  print("[3] -> Tercer Ejercicio");
  print("[4] -> Cuarto Ejercicio");
  print("[5] -> Quinto Ejercicio");
  print("[6] -> Sexto Ejercicio");
  print("[7] -> Séptimo Ejercicio");
  print("[8] -> Octavo Ejercicio");
  print("*****Seleccione una opción****");
  var numero = int.parse(stdin.readLineSync() ?? "");
  do {
    switch (numero) {
      case 1:
        primerejercicio();
        break;
      case 2:
        segundoejercicio();
        break;
      case 3:
        tercerejercicio();
        break;
      case 4:
        cuartoejercicio();
        break;
      case 5:
        quintoejercicio();
        break;
      case 6:
        sextoejercicio();
        break;
      case 7:
        septimoejercicio();
        break;
      case 8:
        octavoejercicio();
        break;
      default:
    }
  } while (numero == 0);

}

void primerejercicio() {
//  print("Introduzca x2");
 // var a = double.parse(stdin.readLineSync() ?? "");
 // print("Introduzca x");
 // var b = double.parse(stdin.readLineSync() ?? "");
 // print("Introduzca c");
 // var c = double.parse(stdin.readLineSync() ?? "");
 // var x1 = ((-b - sqrt((b * b) - (4 * a * c))) / 2 * a);
  // var x2 = ((-b + sqrt((b * b) - (4 * a * c))) / 2 * a);
  // print("x1 = $x1");
   // print("x2 = $x2");



}

void segundoejercicio() {
  print("Coloque sus horas totales");
  var totalHoras = int.parse(stdin.readLineSync() ?? "");
  var s = totalHoras / (24 * 7);
  var d = totalHoras % (24 * 7) / 24;
  var h = totalHoras % 24;
  print("El total de $totalHoras  horas");
  print("$s semanas");
  print("$d días");
  print("$h horas");
}

void tercerejercicio() {
  print("Bienvenido");
  print("Coloque la primera nota");
  var a = int.parse(stdin.readLineSync() ?? "");
  print("Coloque la segunda nota");
  var b = int.parse(stdin.readLineSync() ?? "");
  print("Coloque la tercera nota");
  var c = int.parse(stdin.readLineSync() ?? "");
  var media = (a + b + c) / 3;
  var mediapuntito = ((a + b + c) / 3) + 1;
  print("la media es $media");
  print("Como los alumnos hicieron su tarea, un puntito ps $mediapuntito");
}

void cuartoejercicio() {
  print("Defina su pago por hora : ");
  var horas = int.parse(stdin.readLineSync() ?? "");
  print("Defina las horas trabajadas de su personal : ");
  var horast = int.parse(stdin.readLineSync() ?? "");
  var resultado = horast * horas;

  print("Pago total : $resultado");
}

void quintoejercicio() {
  print("Coloque su número  : ");
  var numero = int.parse(stdin.readLineSync() ?? "");
  var potencia = pow(numero, 2);
  var cubo = pow(numero, 3);
  var quin = pow(numero, 5);
  print("la potencia de $numero es $potencia");
  print("el cubo de $numero es $cubo");
  print("el quítunple de $numero es $quin");
}

void sextoejercicio() {
  print("Coloque su número  : ");
  var numero = double.parse(stdin.readLineSync() ?? "");
  print("Coloque su otro número  : ");
  var numero2 = double.parse(stdin.readLineSync() ?? "");
  var result = (numero2 == 0)
      ? "No se puede dividir entre dos,  tu tas lokazo"
      : numero / numero2;
  print("resultado $result");
}

void septimoejercicio() {
  print("Introduzca su velocidad en m/s : ");
  var v = double.parse(stdin.readLineSync() ?? "");
  print("Introduzca el tiempo en segundos : ");
  var t = double.parse(stdin.readLineSync() ?? "");
  var d = v * t;
  print("la distancia recorrida es  $d metros");
}

void octavoejercicio() {
  var rng = new Random();
  var s = 0;
  var correctas = 3;
  var incorrectas = -1;
  var blanco = 0;
  var resultado = 0;
  var resultado2 = 0;
  var resultado3 = 0;
  var finalresultado = 0;
  for (var i = 0; i < 3; i++) {
    var myrandom = (rng.nextInt(10));
    s += myrandom;
    if (i == 0) {
      print("respuesta correctas $myrandom");
      resultado = myrandom * correctas;
      print("Puntaje : $resultado");
    } else if (i == 1) {
      print("respuesta incorrectas $myrandom");
      resultado2 = incorrectas * myrandom;
      print("Puntaje fallido : $resultado2");
    } else if (i == 2) {
      resultado3 = blanco;
      print("respuesta en blanco $myrandom");
      print("Puntaje blanco : $resultado3");
    }
    finalresultado = resultado + resultado2 + resultado3;
    if (finalresultado < 0) {
      finalresultado = 0;
    }
  }
  print("Total de respuestas $s");
  print("Nota final $finalresultado");
}

