import 'dart:io';
import 'package:expense_tracker/expense_tracker.dart';

void main() {
  final tracker = ExpenseTracker();
  bool running = true;

  while (running) {
    print('===== Expense Tracker =====');
    print('1. Add Expense');
    print('2. View All Expenses');
    print('3. Show Total Expenses');
    print('4. Exit');
    stdout.write('Choose Option: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        tracker.addExpense();
        break;
      case '2':
        tracker.viewExpenses();
        break;
      case '3':
        tracker.showTotal();
        break;
      case '4':
        running = false;
        print('Thank you for using Expense Tracker!');
        break;
      default:
        print('Invalid option, try again.\n');
    }
  }
}