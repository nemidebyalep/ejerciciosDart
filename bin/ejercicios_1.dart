
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
        ejerciciouno();
        break;
      case 2:
        ejerciciodos();
        break;
      case 3:
        ejerciciotres();
        break;
      case 4:
        ejerciciocuatro();
        break;
      case 5:
        ejerciciocinco();
        break;
      case 6:
        ejercicioseis();
        break;
      case 7:
        ejerciciosiete();
        break;
      case 8:
        ejerciciOcho();
        break;
      default:
    }
  } while (numero == 0);

}

void ejerciciouno() {

  print("Dado la F(x) = ax^2 + bx + c ejecute la aplicación: ");
  var a=1;
  var b=20;
  var c=3;
  print("Espere un momento calculando la ecuación de segundo grado...");

  var x1 =(-b - sqrt((b*b)-(4*a*c)))/(2*a);
  var x2 =(-b + sqrt((b*b)-(4*a*c)))/(2*a);

  print("Respuesta de la Ecuación negativa es: $x1 ");
  print("Respuesta de la Ecuación positiva es: $x2");
}

void ejerciciodos() {
  print("Ejercicio N° 2");
  print("Ingresa la cantidad de sus horas totales");
  var totalHoras = int.parse(stdin.readLineSync() ?? "");
  var s = totalHoras / (24 * 7);
  var d = totalHoras % (24 * 7) / 24;
  var h = totalHoras % 24;
  print("El total de $totalHoras horas comprende: ");
  print("SEMANAS: $s");
  print("DIAS: $d");
  print("HORAS: $h");
}

void ejerciciotres() {
  print("Bienvenido al Registro de Nota de Quimica");
  print("Registre la primera nota:");
  var a = int.parse(stdin.readLineSync() ?? "");
  print("Registre la segunda nota:");
  var b = int.parse(stdin.readLineSync() ?? "");
  print("Registre la tercera nota:");
  var c = int.parse(stdin.readLineSync() ?? "");
  var media = (a + b + c) / 3;
  var mediapuntito = ((a + b + c) / 3) + 1;
  print("La media del Trimestre es: $media");
  print("Como el alumno realizó su trabajo, + 1 punto ganado");
  print("Media Total del Trimentre: $mediapuntito");
}

void ejerciciocuatro() {
  print("Ejercicio 4");
  print("Registre su pago por hora: ");
  var horas = int.parse(stdin.readLineSync() ?? "");
  print("Registre las horas trabajadas de su personal: ");
  var horast = int.parse(stdin.readLineSync() ?? "");
  var resultado = horast * horas;
  print("PAGO TOTAL : S/. $resultado.00");
}

void ejerciciocinco() {
  print("Ejercicio 5");
  print("Ingresa su número: ");
  var num = int.parse(stdin.readLineSync() ?? "");
  var potencia = pow(num, 2);
  var cubo = pow(num, 3);
  var quintuple = pow(num, 5);
  print("La Potencia de: $num es: -> $potencia");
  print("El Cubo de: $num es: -> $cubo");
  print("El Quíntuple de: $num es: -> $quintuple");

}

void ejercicioseis() {
  print("Ejercicio 6");
  print("Ingresa un número a dividir: ");
  var num = double.parse(stdin.readLineSync() ?? "");
  print("Ingrese el otro número: ");
  var nume2 = double.parse(stdin.readLineSync() ?? "");
  var result = (nume2 == 0)
      ? "No se puede dividir entre dos,  tu tas lokazo"
      : num / nume2;
  print("resultado $result");
}

void ejerciciosiete() {
  print("Ejercicio 7");
  print("Introduzca la velocidad: ");
  var velocidad = double.parse(stdin.readLineSync() ?? "");
  print("Introduzca el tiempo en segundos : ");
  var tiempo = double.parse(stdin.readLineSync() ?? "");
  var d= velocidad * tiempo;
  print("la distancia recorrida es:  $d metros");
}

void ejerciciOcho() {
  print("Ejercicio 8");
  var rng = new Random();
  var s = 0;
  var correctas = 3;
  var incorrectas = -1;
  var blanco = 0;
  var resultado = 0;  var resultado2 = 0;  var resultado3 = 0; var finalresultado = 0;
  for (var i = 0; i < 3; i++) {
    var myrandom = (rng.nextInt(10));
    s += myrandom;
    if (i == 0) {
      print("respuesta correctas $myrandom");
      resultado = myrandom * correctas;
      print("Puntaje : $resultado");
    } else if (i == 1) { print("respuesta incorrectas $myrandom");
      resultado2 = incorrectas * myrandom;
      print("Puntaje fallido : $resultado2");
    } else if (i == 2) { resultado3 = blanco;
      print("respuesta en blanco $myrandom");
      print("Puntaje blanco : $resultado3"); }
    finalresultado = resultado + resultado2 + resultado3;
    if (finalresultado < 0) {
      finalresultado = 0; }
  }
  print("Total de respuestas $s");
  print("Nota final $finalresultado");
}

