extension AmountFormatting on double {
  String toCurrency() => '৳${toStringAsFixed(2)}';
}