import 'dart:io';
import 'models/expense.dart';
import 'extensions.dart';

class ExpenseTracker {
  final List<Expense> _expenses = [];

  void addExpense() {
    stdout.write('Enter Expense Title: ');
    String title = stdin.readLineSync() ?? '';

    stdout.write('Enter Expense Amount: ');
    double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    stdout.write('Enter Category (Food/Transport/Entertainment): ');
    String category = (stdin.readLineSync() ?? '').trim().toLowerCase();

    Expense expense;
    switch (category) {
      case 'food':
        expense = FoodExpense(title, amount);
        break;
      case 'transport':
        expense = TransportExpense(title, amount);
        break;
      case 'entertainment':
        expense = EntertainmentExpense(title, amount);
        break;
      default:
        expense = Expense(title, amount, category);
    }

    _expenses.add(expense);
    print('Expense Added Successfully!\n');
  }

  void viewExpenses() {
    print('===== All Expenses =====');
    if (_expenses.isEmpty) {
      print('No expenses recorded yet.');
      return;
    }
    for (int i = 0; i < _expenses.length; i++) {
      print('${i + 1}. ${_expenses[i].display()}');
    }
  }

  void showTotal() {
    double total = _expenses.fold(0, (sum, e) => sum + e.amount);
    print('Total Expenses: ${total.toCurrency()}');
  }
}