import 'dart:async';
import 'dart:io';

Future<void> loop({required int start,required int end}) async {
    print("Step $start...");
    start++;
    await Future.delayed(Duration(seconds: 1),(){
      if (start<= end){
      loop(start: start, end: end);
    }
    });
}

void main() {
  stdout.write("Enter end value: ");
  int end = int.parse(stdin.readLineSync() ?? "0");
  loop(start: 1, end: end);
}

// Future<int> getSum(int a,int b) async{
//   await Future.delayed(Duration(seconds: 3));
//   return a+b;
// }
// Future<void> main() async{
//   int sum = await getSum(3, 7);
//   print("Sum: $sum");  
// }


// for(int i=0;i<=5; i++){
//     await Future.delayed(
//     Duration(seconds: 1),
//     () {
//     print("Step $i...");
//   },);

//   }