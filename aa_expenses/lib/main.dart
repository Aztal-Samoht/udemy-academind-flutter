import 'dart:io';

import 'package:aa_expenses/widgets/chart.dart';
import 'package:aa_expenses/widgets/transaction_list_holder.dart';

import './widgets/transaction_list.dart';

import './widgets/entery_field.dart';

import './models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('expence tracker')),
        body: Column(
          children: [
            Chart(),
            TransactionListHolder(),
          ],
        ),
      ),
    );
  }
}
