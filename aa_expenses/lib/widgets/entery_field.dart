import 'package:aa_expenses/app_util.dart';
import 'package:aa_expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class EnteryField extends StatelessWidget {
  EnteryField({
    super.key,
    required this.onSubmit,
    required this.tController,
    required this.aController,
    required this.transactions,
  });
  final void Function() onSubmit;
  final TextEditingController tController;
  final TextEditingController aController;
  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            controller: tController,
            decoration: InputDecoration(labelText: 'Title'),
            onSubmitted: (_) => onSubmit(),
          ),
          TextField(
            onTap: () {
              dPrint(aController.text);
            },
            controller: aController,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(labelText: 'Amount'),
            onSubmitted: (_) => onSubmit(),
          ),
          OutlinedButton(
            child: const Text('Submit'),
            onPressed: onSubmit,
          ),
        ],
      ),
    );
  }
}
