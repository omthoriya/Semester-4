import 'dart:io';

void fibonacciSeries(int n){
  int a = 0;
  int b = 1;
  print("Fibonacci Series $a");
  print("Fibonacci Series $b");
  for(int i=2;i<n;i++){
    int c = a + b;
    print("Fibonacci Series $c");
    a = b;
    b = c;
  }
}
void main(){
  stdout.write("enter a number  :");
  int n = int.parse(stdin.readLineSync()!);

  fibonacciSeries(n);
}