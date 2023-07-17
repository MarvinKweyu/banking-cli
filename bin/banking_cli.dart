import 'dart:io';
import 'package:banking_cli/banking_cli.dart' as banking_cli;

void main(List<String> arguments) {
  // print('Hello world: ${banking_cli.calculate()}!');
  // initialize the Bank class
  var userAccount = banking_cli.Bank(123, 10000);
  // display the menu
  print(
      '\n\nWelcome to Your Banking App. Please select an option from the below listing for your banking needs\n');

  String userOption = "";
  int userInput = 0;

  while (userOption != "5") {
    print(
        '1. Check Balance\n 2. Deposit\n 3. Withdraw\n 4. Transfer\n 5. Exit\n\n');
    print("\nOption:  \t");
    var option = stdin.readLineSync();

    try {
      userInput = int.parse(option!);
      if (userInput == 1) {
        print("Your balance as of today ${userAccount.checkBalance()}");
      } else if (userInput == 2) {
        print("\nWhat amount of money do you want to deposit?");
        var deposit = stdin.readLineSync();
        int depositAmount = int.parse(deposit!);
        userAccount.deposit(depositAmount);
      } else if (userInput == 3) {
        print("\nWithdrawal amount: \t");

        var withdrawal = stdin.readLineSync();
        int withdrawalAmount = int.parse(withdrawal!);
        userAccount.withdraw(withdrawalAmount);
      } else if (userInput == 4) {
        print("\n Transfer your funds seamlessly accross acounts. ");
      } else {
        print("You entered: $option");
        print("Oops! Let's try that again!");
      }
    } catch (e) {
      print("Invalid input. Please enter a number");
      continue;
    }
  }

  print("\n\n\tGoodbye!");

  // get the user input
  // process the user input
  // display the results
}

void showMenu() {}
