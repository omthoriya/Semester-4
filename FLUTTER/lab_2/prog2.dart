import 'dart:io';
import 'dart:math';

void main(){
  stdout.write("enter first number ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("enter second number ");
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write("enter first number ");
  String sine = (stdin.readLineSync()!);

   if(sine == '+'){
     double num3 = num1 + num2;
     print("$num1 + $num2 = $num3");
   }
   else if(sine == '-'){
     double num3 = num1 - num2;
     print("$num1 - $num2 = $num3");
   }
   else if(sine == '*'){
     double num3 = num1 * num2;
     print("$num1 * $num2 = $num3");
   }
   else if(sine == '/'){
     double num3 = num1 / num2;
     print("$num1 / $num2 = $num3");
   }
   else{
     print("invalid sine");
   }
}