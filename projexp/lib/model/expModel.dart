import 'package:uuid/uuid.dart';

enum Category { food, travel, clothing, entertainment, other }

final uuid = Uuid();

class Expense {
  Expense({required this.title, required this.amount, required this.category})
      : id = uuid.v8();

  String id;
  String title;
  double amount;
  Category category;
}
