import 'dart:ffi';

import 'package:aa_expenses/app_util.dart';
import 'package:aa_expenses/models/transaction.dart';
import 'package:aa_expenses/widgets/chart.dart';
import 'package:aa_expenses/widgets/entery_field.dart';
import 'package:aa_expenses/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionListHolder extends StatefulWidget {
  TransactionListHolder({super.key});

  @override
  State<TransactionListHolder> createState() => _TransactionListHolderState();
}

class _TransactionListHolderState extends State<TransactionListHolder> {
  List<Transaction> transactions = [
    Transaction(amount: 69.99, date: DateTime.now(), id: 't1', title: 'Shoes'),
    Transaction(amount: 16.56, date: DateTime.now(), id: 't2', title: 'food'),
  ];

  final TextEditingController tController = TextEditingController();
  final TextEditingController aController = TextEditingController();

  void update() {
    dPrint('update called');
    try {
      double price = double.parse(aController.text);

      if (!(aController.text.isEmpty || price <= 0)) {
        transactions.add(
          Transaction(
            amount: price,
            date: DateTime.now(),
            id: '${DateTime.now().toString()}',
            title: tController.text,
          ),
        );
        tController.clear();
        aController.clear();
      } else {
        dPrint('update bypassed');
      }
    } catch (e) {
      return;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Column(
        children: [
          EnteryField(
              onSubmit: update,
              tController: tController,
              aController: aController,
              transactions: transactions),
          TransactionList(transactions),
        ],
      ),
    );
  }
}
