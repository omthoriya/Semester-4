import 'dart:io';

void check(var array){
  var arr = array;
  int evencount = 0;
  int oddcount = 0;
  
  for(int i=0;i<arr.length;i++){
    if(arr[i]%2==0){
      evencount +=1;
    }
    else{
      oddcount +=1;
    }
  }
  print("total even number is $evencount");
  print("total odd number is $oddcount");
}
void main(){
  var nums=[];

  stdout.write("enter a size of array :");
  int n = int.parse(stdin.readLineSync()!);

  for(int i=0;i<n;i++){
    stdout.write("enter an element in array ${i + 1}:");
    nums.add(int.parse(stdin.readLineSync()!));
  }
  check(nums);
}