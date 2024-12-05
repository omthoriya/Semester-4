import 'dart:io';

void sort(var name,var height){
  var arr = height;
  var arr1 = name;
  arr.sort();
  var des = arr.reversed.toList();
  print("height $des,name $arr1");

  for(int i=0;i<arr.length;i++){

  }

}
void main(){
  var name=[];
  var height=[];

  stdout.write("enter a size of array :");
  int n = int.parse(stdin.readLineSync()!);

  for(int i=0;i<n;i++){
    stdout.write("enter a name ${i + 1}:");
    name.add(stdin.readLineSync()!);
  }
  for(int i=0;i<n;i++){
    stdout.write("enter a height ${i + 1}:");
    height.add(stdin.readLineSync()!);
  }
  sort(name,height);
}