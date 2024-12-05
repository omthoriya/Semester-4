import 'dart:io';

void main(){
  stdout.write("enter a number in meter :");
  int meter = int.parse(stdin.readLineSync()!);

  double feet = meter * 0.304;
  print("feet $feet");
}