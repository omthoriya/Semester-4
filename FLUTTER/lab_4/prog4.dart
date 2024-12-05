import 'dart:io';

int primeNumber(int n){
  int count = 0;
  for(int i=1;i<=n;i++){
    if(n%i==0) {
      count += 1;
    }
  }
  if(count == 2){
    return 1;
  }
  else{
    return 0;
  }
}
void main(){
  stdout.write("enter a number  :");
  int n = int.parse(stdin.readLineSync()!);


  int ans = primeNumber(n);
  if(ans == 1){
    print("number is prime ");
  }
  else{
    print("number is not prime ");
  }
}