import 'dart:io';

void main() {
  print('Enter Matrix Element : ');

  List<List<int>> ope = List.generate(
      3,
      (i) => List.generate(3, (j) {
            stdout.write('Enter $i $j Element : ');
            return int.parse(stdin.readLineSync() ?? '0');
          }));

  int choice;

  do {
    print('\nEnter 1 for Sum of Element');
    print('Enter 2 for Sum of specific Row');
    print('Enter 3 for Sum of specific Column');
    print('Enter 4 for Sum of Diagonal Element');
    print('Enter 5 for Sum of Anti-Diagonal Element');
    print('Enter 0 for Exit\n');
    choice = int.parse(stdin.readLineSync() ?? '0');

    switch (choice) {
      case 1:
        int sum = 0;
        for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
            sum += ope[i][j];
          }
        }
        print('Sum of All Element is : $sum');
        break;
      case 2:
        int sum = 0;
        print('Enter Row Element : ');
        int row = int.parse(stdin.readLineSync() ?? '0');
        for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
            if (i == row) sum += ope[i][j];
          }
        }
        print('Sum $row Element is : $sum');
        break;
      case 3:
        int sum = 0;
        print('Enter Row Element : ');
        int col = int.parse(stdin.readLineSync() ?? '0');
        for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
            if (j == col) sum += ope[i][j];
          }
        }
        print('Sum $col Element is : $sum');
        break;
      case 4:
        int sum = 0;
        for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
            if (i == j) sum += ope[i][j];
          }
        }
        print('Sum Diagonal Element is : $sum');
        break;
      case 5:
        int sum = 0;
        for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
            if (i + j == 3 - 1) sum += ope[i][j];
          }
        }
        print('Sum Anti-Diagonal Element is : $sum');
        break;
      case 0:
        print('Thank You For Your Support');
        break;
      default:
        print('Your Input is not Valid Please Re-Enter !!');
    }
  } while (choice != 0);
}