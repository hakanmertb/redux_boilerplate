import 'package:intl/intl.dart';

class Helpers {
  static String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }

  static String formatCurrency(double amount) {
    final NumberFormat formatter = NumberFormat.currency(symbol: '\$');
    return formatter.format(amount);
  }

  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}
