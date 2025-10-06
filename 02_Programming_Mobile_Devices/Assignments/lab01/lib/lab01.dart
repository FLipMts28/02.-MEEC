import 'dart:ffi';
import 'dart:io';


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
    if (i  == 16) {
      AssertionError('Erro: O valor 16 nao e permitido.');
      i++;
    }print(i); 
  } 
}

int sum(int a, int b)  =>  a + b;

// void redirectWindow() async {
//   final Uri url = Uri.parse('https://dart.dev/guides');
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     print('Could not launch $url');
//   }
// }

