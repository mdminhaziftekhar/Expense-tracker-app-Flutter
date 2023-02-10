// This is expense category class or model
// Every expense will have a category that it belongs to

import 'package:flutter/material.dart';
import '../constants/icons.dart';

class ExpenseCategory {
  final String title; // Title category
  int entries = 0; // Number of expenses. it will change overtime
  double totalAmount = 0.0; // Total amount of expenses.
  final IconData icon;

  ExpenseCategory({
    required this.title,
    required this.entries,
    required this.totalAmount,
    required this.icon,
  });

  //Conversion of 'model' to 'Map' to store in the database
  Map<String, dynamic> toMap() => {
        'title': title,
        'entries': entries,
        'totalAmount': totalAmount.toString(),
      };

  //Conversion of 'Map' to 'Model' when retrieving from the database
  factory ExpenseCategory.fromString(Map<String, dynamic> value) =>
      ExpenseCategory(
        title: value['title'],
        entries: value['entries'],
        totalAmount: value['totalAmount'],
        icon: icons[value['title']]!, // It will search the 'icons' map and find the value related to the title
      );
}
