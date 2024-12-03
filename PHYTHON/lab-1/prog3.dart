import 'dart:io';

void main(){
  stdout.write("enter a fahrenheit :");
  double fahrenheit = double.parse(stdin.readLineSync()!);
  double celcius = ((fahrenheit-32)*5/9);
  print("temparature in celcuius $celcius");
}