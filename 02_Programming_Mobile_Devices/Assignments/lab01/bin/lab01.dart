//import 'dart:async';
//import 'dart:ffi';
import 'dart:io';
import 'package:lab01/lab01.dart' as lab01;

void main(List<String> arguments) async {

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
// PERGUNTA 4 --- Escrever um programa que conta de 0 a 20, mas dispulta um AssertionError no valor 16.
  
  lab01.countIntegers();

// PERGUNTA 5 --- Escrever uma função que retorna a soma de dois inteiros.
// PERGUNTA 5.1 ---Escrever uma função que retorna a soma de dois inteiros com Arrow Functions
  print('Soma: ${lab01.sum(10, 10)}');

// PERGUNTA 6 --- Escrever uma função que retorna o link "www.google.pt".

  print('Link: ${lab01.canLaunchUrl()}');

// PERGUNTA 7 --- Imprimir uma lista de nomes e ordena-los pela letra a.

  lab01.printAndSortNames();

// PERGUNTA 8 --- Criar e tratar uma exceção quando o programa tenta criar uma raiz quadrada negativa.

  lab01.exceptionHandler(-2);
  lab01.exceptionHandler(2);

// PERGUNTA 9 --- Criar uma Classe House, criar um construtor nomeado e criar 3 objectos, Adicionar objectos á lista e imprimir todo com recurso a toString().

  lab01.House house1 = lab01.House.namedConstructor(id: 1, name: 'Apt T2 - Pinhal Novo'   , price: 175.500);
  lab01.House house2 = lab01.House.namedConstructor(id: 2, name: 'Apt T2 - Palmela'       , price: 195.520);
  lab01.House house3 = lab01.House.namedConstructor(id: 3, name: 'Apt T2 - Quinta do Anjo', price: 185.500);

  List<lab01.House> houses = [house1, house2, house3];

  for (var house in houses) {
    print(house);
  }

// PERGUNTA 10 --- Criar uma mensagem com atraso.

  lab01.virtualDelayMessage();

// PERGUNTA 11 --- Criar um programa que receba um numero inteiro e retorne uma stream de números entre 1 e o valor inserido.
//                 Deverá existir outra função que receba a stream e imprima a soma dos valores nela contidos com o recurso a await for.   

  var stream = lab01.countStream(10);
  var sum = await lab01.sumStream(stream);
  print(sum); 

// PERGUNTA 12 --- Criar uma funcção que devolve o dia e hora atual.

  print('Hora Atual:  ${lab01.getCurrentDateTime()}');

}





