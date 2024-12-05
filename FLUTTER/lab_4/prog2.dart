import 'dart:io';

void maxValue(int num1,int num2){
  if(num1 > num2){
    print("maximum is $num1");
  }
  else{
    print("maximum is $num2");
  }
}
void main(){
  stdout.write("enter a number 1 :");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("enter a number 2  :");
  int num2  = int.parse(stdin.readLineSync()!);

  maxValue(num1,num2);
}