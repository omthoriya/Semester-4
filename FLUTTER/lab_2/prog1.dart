import 'dart:io';
void main(){
  stdout.write("enter number :");
  int number = int.parse(stdin.readLineSync()!);

  if(number > 0){
    stdout.write("number is positive");
  }
  else{
    stdout.write("number is nagative");
  }
}