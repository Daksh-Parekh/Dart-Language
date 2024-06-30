import 'dart:io';

void main(){
    List<List<int>> matrix = List.generate(3,(row)=> List.generate(3, (j)=> 0 ) );
print(matrix);

// List<List<int>> matrix (){


//   List<List<int>> matrix = List.generate(3,(index){List.generate(3, (j){return 0;} ) } );


//   for(int i = 0; i < 3; i++){


//     List<int> row = []; 



//     for(int j = 0; j < 3; j++){
//      int n = int.parse(stdin.readLineSync()??'0');
//      row.add(n);
//     }
//     matrix.add(row);
//   }
//   return matrix;
// }
}
