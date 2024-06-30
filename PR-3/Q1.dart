import 'dart:io';

int Sum({required List<int> lst}){
  int sum = 0;

  lst.forEach((e) => sum += e);
  // for(int i=0; i<lst ;i++) sum += lst[i];
  return sum;
}
void main() {
  stdout.write("Enter the length of List: ");
  int n = int.parse(stdin.readLineSync() ?? "0");
  print("");
  
  List<int> lst = List.generate(n, (i) {
    stdout.write("Enter the List ${i+1} Element: ");
    return  int.parse(stdin.readLineSync() ?? "0");
  });
  print("The Sum of All Elements: ${Sum(lst: lst)}");
}