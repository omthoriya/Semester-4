import 'dart:io';

void simpleInterest(int p,int r,int t){
  double si = (p * r * t)/100;
  print("Simple interest : $si");
}
void main(){
  stdout.write("enter a Principal :");
  int principal = int.parse(stdin.readLineSync()!);

  stdout.write("enter a Rate  :");
  int rate  = int.parse(stdin.readLineSync()!);

  stdout.write("enter a Time :");
  int time = int.parse(stdin.readLineSync()!);

  simpleInterest(principal,rate,time);
}