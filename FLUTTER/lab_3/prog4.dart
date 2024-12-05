import 'dart:io';

void main() {
  stdout.write("enter a number1 :");
  int number1 = int.parse(stdin.readLineSync()!);
  int temp = 0;

  while(number1 != 0){
    int rem = number1 % 10;
    temp = temp * 10 + rem;
    number1 = number1 ~/ 10;
  }
  print("rever order : $temp");
}