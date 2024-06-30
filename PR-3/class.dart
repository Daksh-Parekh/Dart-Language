import 'dart:io';

class Customer {
  late int cust_id;
  late String cust_name;
  late int cust_contact;
  List<Product> cust_cart = [];

  
  Customer(this.cust_id, this.cust_name, this.cust_contact);

  getCustomerDataById(int id) {
    if ((cust_id == id)) {      
      print("The id of cutomer is : ${cust_id}");
      print("The name of customer is : ${cust_name}");
      print("The contact number of customer is : ${cust_contact}");
    }
    else{
      print("Please again Enter your Id");
    }
  }
   void GetDetailsOfProduct(){
    
    Product? product;
      
      print("===============================================================");
      print("Select Caletory from below options");
      print("----------------------------------------------");

      print("1. for Vegetable");
      print("2. for Fruits");
      print("3. for Drinks");
      print("0. Exit");
      print("===============================================================");

      stdout.write("Enter category to add: ");
      int categorychoice = int.parse(stdin.readLineSync() ?? "0");

      switch (categorychoice) {
        case 1:
          product= Product.Vegetable();
          break;
        case 2:
          product= Product.Fruits();
          break;
        case 3:
          product= Product.Drinks();
          break;
        case 0:
          exit(0);
          //break;
        default:
          print("Invalid choice");
          break;
      }
      
      if (product != null) {
        cust_cart.add(product);
        print("Product added to cart.");
      }
      
  }


  void printCartDetails() {
    int total = 0;
    double discount = 0.0;
    double finalAmount = 0.0;
    print("\nID: $cust_id\t Customer: $cust_name\t Contact: $cust_contact");
    print("Cart details:");
    print("ID\tName\tQty\tPrice\tTotal");
    print("------------------------------------------------------------");
    for (var product in cust_cart) {
      total += product.prod_qty * product.prod_price;
    }
    if (total >= 500 && total < 1500) {
          discount = total * 0.10;
        } else if (total >= 1500 && total < 3500) {
          discount = total * 0.20;
        } else if (total >= 3500 && total < 6500) {
          discount = total * 0.25;
        } else if (total >= 6500) {
          discount = total * 0.30;
        }
    finalAmount = total - discount;

  for (Product product in cust_cart) {
    stdout.write("${product.prod_id}\t${product.prod_name}\t  ${product.prod_qty}\t${product.prod_price}\t${total}");
  }

  stdout.write("\n------------------------------------------------------------\n");
  stdout.write("Total Amount:\t\t\t\t\t${total}\n");
  stdout.write("Discount Applied:\t\t\t\t${discount}\n");
  stdout.write("Final Amount:\t\t\t\t\t${finalAmount}\n");
  stdout.write("------------------------------------------------------------\n");
  stdout.write("======== THANK YOU FOR SHOPPING... VISIT AGAIN...!! ========\n");
  stdout.write("------------------------------------------------------------\n");
  }

}


class Product {
  late int prod_id;
  late String prod_name;
  late int prod_qty;
  late int prod_price;

  Product(this.prod_id, this.prod_name, this.prod_qty, this.prod_price);
  
  static Product? Vegetable(){    
    print("");
    print("ID\tName\t Price");
    print("========================");
    print("1\tCarrot\t 100");
    print("2\tPotato\t 200");
    print("3\tTomato\t 300");

    stdout.write("Enter your choice: ");
    int productchoice = int.parse(stdin.readLineSync() ?? "0");

    switch (productchoice) {
      case 1:
        stdout.write("Enter the quantity: ");
        int qty = int.parse(stdin.readLineSync() ?? "0");
        return Product(1, "Carrot", qty, 100);
      case 2:
        stdout.write("Enter the quantity: ");
        int qty = int.parse(stdin.readLineSync() ?? "0");
        return Product(2, "Potato", qty,200);
      case 3:
        stdout.write("Enter the quantity: ");
        int qty = int.parse(stdin.readLineSync() ?? "0");
        return Product(3, "Tomato", qty, 300);
      default:
        throw Exception("Invalid choice");
    }
  }

  static Product? Fruits(){    
    print("");
    print("ID\tName\t Price");
    print("========================");
    print("1\tApple\t 100");
    print("2\tMango\t 200");
    print("3\tOrange\t 80");

    stdout.write("Enter your choice: ");
    int productchoice = int.parse(stdin.readLineSync() ?? "0");

    switch (productchoice) {
      case 1:
        stdout.write("Enter the quantity: ");
        int qty = int.parse(stdin.readLineSync() ?? "0");
        return Product(4, "Apple", qty, 100);
      case 2:
        stdout.write("Enter the quantity: ");
        int qty = int.parse(stdin.readLineSync() ?? "0");
        return Product(5, "Mango", qty,200);
      case 3:
        stdout.write("Enter the quantity: ");
        int qty = int.parse(stdin.readLineSync() ?? "0");
        return Product(6, "Orange", qty, 80);
      default:
        throw Exception("Invalid choice");
    }
  }

  static Product? Drinks(){    
    print("");
    print("ID\tName\t\tPrice");
    print("========================");
    print("1\tCoconut Water\t 100");
    print("2\tRedBull\t\t 150");
    print("3\tLemon Soda\t 30");

    stdout.write("Enter your choice: ");
    int productchoice = int.parse(stdin.readLineSync() ?? "0");

    switch (productchoice) {
      case 1:
        stdout.write("Enter the quantity: ");
        int qty = int.parse(stdin.readLineSync() ?? "0");
        return Product(7, "Coconut Water", qty, 100);
      case 2:
        stdout.write("Enter the quantity: ");
        int qty = int.parse(stdin.readLineSync() ?? "0");
        return Product(8, "RedBull", qty,120);
      case 3:
        stdout.write("Enter the quantity: ");
        int qty = int.parse(stdin.readLineSync() ?? "0");
        return Product(9, "Lemon Soda", qty, 30);
      default:
        throw Exception("Invalid choice");
    }
  }
}