import 'dart:io';

void main(){
  stdout.write("enter a number1 :");
  int number1 = int.parse(stdin.readLineSync()!);

  for(int i=1;i<=number1;i++){
    if(number1%i==0){
      print("factor : $i");
    }
  }
}