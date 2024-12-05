import 'dart:io';
void main(){
  stdout.write("enter number1 :");
  int number1 = int.parse(stdin.readLineSync()!);

  stdout.write("enter number2 :");
  int number2 = int.parse(stdin.readLineSync()!);

  stdout.write("enter number3 :");
  int number3 = int.parse(stdin.readLineSync()!);

  if(number1>number2){
    if(number1>number3){
      print("$number1 is grater");
    }
    else{
      print("$number3 is grater");
    }
  }
  else if(number2>number3){
    print("$number2 is grater");
  }
  else{
    print("$number3 is grater");
  }
}