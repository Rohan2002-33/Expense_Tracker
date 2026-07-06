class Expense {
  final String title;
  final double amount;
  final String category;

  Expense(this.title, this.amount, this.category);

  String display() {
    return '$title\t- ৳${amount.toStringAsFixed(2)} - $category';
  }
}

class FoodExpense extends Expense {
  FoodExpense(String title, double amount) : super(title, amount, 'Food');
}

class TransportExpense extends Expense {
  TransportExpense(String title, double amount) : super(title, amount, 'Transport');
}

class EntertainmentExpense extends Expense {
  EntertainmentExpense(String title, double amount)
      : super(title, amount, 'Entertainment');

  @override
  String display() {
    return '${super.display()} 🎬';
  }
}