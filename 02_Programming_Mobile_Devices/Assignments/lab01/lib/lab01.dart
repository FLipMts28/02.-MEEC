//import 'dart:ffi';
//import 'dart:io';

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
    if (i == 16) {
      i++;
    } print(i);
  }
}