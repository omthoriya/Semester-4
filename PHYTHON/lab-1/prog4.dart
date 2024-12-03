import 'dart:io';

void main(){
  stdout.write("enter first mark :");
  int mark1 = int.parse(stdin.readLineSync()!);

  stdout.write("enter second mark :");
  int mark2 = int.parse(stdin.readLineSync()!);

  stdout.write("enter third mark :");
  int mark3 = int.parse(stdin.readLineSync()!);

  stdout.write("enter foruth mark :");
  int mark4 = int.parse(stdin.readLineSync()!);

  stdout.write("enter fifth mark :");
  int mark5 = int.parse(stdin.readLineSync()!);

  double percentage = (((mark1+mark2+mark3+mark4+mark5)/500)*100);
  print("percentage =50 $percentage");
}