import 'dart:io';

void main() {
  stdout.write("enter a number1 :");
  int number1 = int.parse(stdin.readLineSync()!);
  int count = 0;
  for (int i = 1; i <= number1; i++) {
    if (number1 % i == 0) {
      count += 1;
    }
  }
  if (count == 2) {
    print("number is prime  ");
  }
  else{
    print("number is not prime  ");
  }
}