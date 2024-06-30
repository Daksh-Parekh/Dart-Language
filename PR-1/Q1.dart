import 'dart:io';
void main(){

  stdout.write("Enter size: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> lst = List.generate(n, (index) {
    stdout.write("Enter integer List: ");
    return int.parse(stdin.readLineSync() ??'0');
  });

  for(int i=0; i<n && lst[i]< 0;i++){
    stdout.write("Negative number: ${lst[i]}\n");
  }
}