//import 'dart:async';
import 'dart:io';

import 'package:lab01/lab01.dart' as lab01;

void main(List<String> arguments) {
  //print('Hello world: ${lab01.calculate()}!');
  print('Nome: ${lab01.name}');
  print('Nacionalidade: ${lab01.nationality}');
  print('Idade: ${lab01.age}');
  print('Altura: ${lab01.height}');
  print('Casado: ${lab01.socialStatus}');
  print('Valor de Pi: ${lab01.piValue}'); 

  // Read input from the user
  print('Introduza um inteiro:');
  String? userInput = stdin.readLineSync();
  print('Inteiro: ${lab01.convertStringToInt(userInput!)}');

  lab01.countIntegers();


}


