import 'dart:io';
void main(){

  int i,v;

  stdout.write("Enter size: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> lst = List.generate(n, (i) {
    stdout.write("Enter integer List: ");
    return int.parse(stdin.readLineSync() ??'0');
  });

  stdout.write("Press 1 for Insert\n");
  stdout.write("Press 2 for Update\n");
  stdout.write("Press 3 for Delete\n");
  stdout.write("Press 4 for view\n");

  stdout.write("Enter your choice: ");
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      lst.insert(i = int.parse(stdin.readLineSync()!), v = int.parse(stdin.readLineSync()!));
      break;
     case 2:
       lst[i = int.parse(stdin.readLineSync()!)] =  int.parse(stdin.readLineSync()!);
       break;
     case 3:
       lst.remove(v=int.parse(stdin.readLineSync()!));
       break;
     case 4:
       lst.indexOf(i=int.parse(stdin.readLineSync()!));
       break;
     default:
      stdout.write("Invalid choice");
       break;
  }
}