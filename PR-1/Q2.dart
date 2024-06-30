import 'dart:io';
void main(){

  stdout.write("Enter size: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> lst = List.generate(n, (i) {
    stdout.write("Enter integer List: ");
    return int.parse(stdin.readLineSync() ??'0');
  });

  lst.sort();
print("Large Element ${lst[n-1]}");

}