import 'dart:io';

void main(){
  stdout.write("enter a weight in pound :");
  int weight = int.parse(stdin.readLineSync()!);

  double weight_kg = weight * 0.45359237;
  print("kg $weight_kg");

  stdout.write("enter a height in inch :");
  int height = int.parse(stdin.readLineSync()!);

  double height_meter = height * 0.254;
  print("meter $height_meter");

  double BMI = ((weight_kg)/height_meter*height_meter);
  print("BMI $BMI");
}