class Bank {
  int accountNumber;
  int balance;

  Bank(this.accountNumber, this.balance) {
    accountNumber = 0;
    balance = 10000;
  }

  int calculate() {
    return 6 * 7;
  }

  void deposit(int amount) {
    balance += amount;
  }

  void withdraw(int amount) {
    balance -= amount;
  }

  void transfer(int amount, String accountNumber) {
    print('Transfer');
  }

  int checkBalance() {
    return balance;
  }
}
