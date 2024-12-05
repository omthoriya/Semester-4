import 'dart:io';

void main() {
  stdout.write("enter a string :");
  String string1 = stdin.readLineSync()!;

  String? string2="";

  for(int i=string1.length-1;i>=0;i--){
    string2 = string2! + string1[i];
  }
  print("reverse $string2");
}