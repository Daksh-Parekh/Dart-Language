import 'class.dart';
import 'dart:io';

void main() {
  stdout.write("Enter the number of customers: ");
  int n = int.parse(stdin.readLineSync() ?? "0");
  List<Customer> customers = [];
  //Aray of object for customers
   for(int i = 0; i < n; i++){ 
    
      print("Customer: ${i+1}\n");
      stdout.write("Enter Customer Id: ");
      int id = int.parse(stdin.readLineSync() ?? "0");
      stdout.write("Enter Customer Name: ");
      String name = stdin.readLineSync()?? "null";
      stdout.write("Enter Customer Contact: ");
      int contact = int.parse(stdin.readLineSync() ?? "0");
      
      Customer c = Customer(id,name,contact);
      customers.add(c);
      
      c.GetDetailsOfProduct();        
  
      c.printCartDetails();

      
      print("\n------Search your Customer------\n");
      stdout.write("Enter the id of Customer : ");
      id = int.parse(stdin.readLineSync() ?? "0");
      c.getCustomerDataById(id);
    }
}