import 'dart:io';

Future<void> timer({required int startsec,required int startmin,required int endsec,required int endmin}) async{
  print("$startmin : $startsec ");
  startsec++;
  if(startsec>=60){
    startsec = 0;
    startmin++;
  }
  await Future.delayed(Duration(seconds: 1),
  () {
    if(startsec<=endsec || startmin<endmin) {
      timer(startsec: startsec, startmin: startmin,endsec: endsec,endmin: endmin);
    }
  });
}

void main() {
  stdout.write("Enter the minutes to end timer: ");
  int endminutes = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter the seconds to end timer: ");
  int endseconds = int.parse(stdin.readLineSync() ?? "0");

  timer(startsec: 0, startmin: 0, endsec: endseconds,endmin: endminutes);
}