import 'package:aa_expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  const TransactionList(this.transactions, {super.key});

  final List<Transaction> transactions;

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Column(
        children: [
          Card(
            child: Row(
              children: const [
                Expanded(flex: 1, child: Text('date')),
                Expanded(flex: 3, child: Text('title')),
                Expanded(flex: 1, child: Text('amount')),
              ],
            ),
          ),
          SizedBox(
            height: TargetPlatform.iOS == Theme.of(context).platform
                ? MediaQuery.of(context).size.height * .5
                : MediaQuery.of(context).size.height * .6,
            child: ListView.builder(
              itemCount: widget.transactions.length,
              itemBuilder: (context, i) {
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          DateFormat('MM-dd-yyyy')
                              .format(widget.transactions[i].date),
                        ),
                      ),
                      Expanded(
                          flex: 4, child: Text(widget.transactions[i].title)),
                      Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2,
                            ),
                          ),
                          child: Text(
                            '\$${widget.transactions[i].amount.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
