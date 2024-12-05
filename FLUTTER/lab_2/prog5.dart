import 'dart:io';
void main(){
  stdout.write("enter number1 :");
  int number1 = int.parse(stdin.readLineSync()!);

  stdout.write("enter number2 :");
  int number2 = int.parse(stdin.readLineSync()!);

  stdout.write("enter number3 :");
  int number3 = int.parse(stdin.readLineSync()!);

  int ans = (number1>number2)?((number1>number3?number1:number3)):((number2>number3)?number2:number3);
  print("$ans");
}