//import 'dart:async';
import 'dart:io';
import 'package:lab01/lab01.dart' as lab01;

void main(List<String> arguments) {
  lab01.clearTerminal();
  print('Dart Lab 01');

  // PERGUNTA 1 --- Criar e inicializar as variáveis para que sejam produzidos os seguintes outputs:


  print('Nome:           ${lab01.name}')         ;
  print('Nacionalidade:  ${lab01.nationality}')  ;
  print('Idade:          ${lab01.age}')          ;
  print('Altura:         ${lab01.height}')       ;
  print('Casado:         ${lab01.socialStatus}') ;
  print('Valor de Pi:    ${lab01.piValue}')      ; 
  // PERGUNTA 2 --- Escrever um programa que converte uma String num inteiro.

   
//Read input from the user

  print('\nIntroduza um inteiro:');
  String? userInput = stdin.readLineSync();
  print('Inteiro: ${lab01.convertStringToInt(userInput ?? '')}');


// PERGUNTA 3 --- Escrever um programa que conta de 0 a 20, mas que salta o número 16 e emite uma mensagem de erro.

  lab01.countIntegers();

// PERGUNTA 4 --- Escrever uma função que retorna a soma de dois inteiros.

  print('Soma: ${lab01.sum(10, 10)}');

// PERGUNTA 5 --- Escrever uma função que retorna o resultado da multiplicação de 6 por 7.


}


