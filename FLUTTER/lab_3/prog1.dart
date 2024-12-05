import 'dart:io';

void main(){
  stdout.write("enter a number1 :");
  int number1 = int.parse(stdin.readLineSync()!);

  stdout.write("enter a number2 :");
  int number2 = int.parse(stdin.readLineSync()!);

  for(int i=number1;i<=number2;i++){
    if(i%2==0){
      if(i%3!=0){
        print("number is $i");
      }
    }
  }
}