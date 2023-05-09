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

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void startAddingItem(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return NewTransaction();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        appBar: AppBar(
          title: Text('expence tracker'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
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
