import 'dart:io';
import 'dart:math';
import 'dart:async';


// Function to clear the terminal screen
void clearTerminal() {
  if (Platform.isWindows) {
    // For Windows
    stdout.write('\x1B[2J\x1B[0;0H');
  } else {
    // For Linux and MacOS
    stdout.write('\x1B[2J\x1B[H');
  }
}

String name = 'Ana';
String nationality = 'Portuguesa';
int age = 20; 
double height = 1.75;
bool socialStatus = false;
double piValue = 3.14;

int calculate() {
  return 6 * 7;
}


int convertStringToInt(String str) {
  int val = int.tryParse(str) ?? 0;
  if (val == 0) {
    print('Erro: A string fornecida nao e um inteiro valido.');
  } 
  return val;
}

void countIntegers(){
   
  for (var i = 0; i <= 20; i++) {
    try{
      if (i  == 16) {
        throw AssertionError('Erro: O valor 16 nao e permitido.');
      }print(i); 
    } catch (e) {
      print('Erro - $i nao e permitido.');
      continue;
    }
  } 
}

int sum(int a, int b)  =>  a + b;

String canLaunchUrl() => ('www.google.pt');


void printAndSortNames(){

 List<String> names = ['Ana', 'Joao', 'Anabela', 'Zeca', 'Beatriz', 'Andre'];
  names.sort((a, b) => a.compareTo(b));
  for (var name in names) {
    if (name.startsWith('A'))  print(name);
  }
}

void exceptionHandler(double number) {
  try {
    if (number < 0) {
      throw ArgumentError('Nao e possivel calcular a raiz quadrada de um numero negativo.');
    }
    double result = sqrt(number);
    print('A raiz quadrada de $number e $result');
  } catch (e) {
    print('Erro: $e');
  }
}

class House {
  int id;
  String name;
  double price;

  // Named constructor
  House.namedConstructor({required this.id, required this.name, required this.price});

  @override
  String toString() {
    return 'House(ID: $id, Name: $name, Price: $price)';
  }
}

void virtualDelayMessage() async {
  print('Olá utilizador!');
  await Future.delayed(Duration(seconds: 2), () {
    print('Serei o seru assistante pessoal a partir de hoje.');
  });
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}
DateTime getCurrentDateTime() {
  return DateTime.now();
}