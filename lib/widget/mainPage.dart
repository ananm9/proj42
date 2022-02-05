import 'package:flutter/material.dart';
import 'package:proj42/models/transactions.dart';
import 'package:proj42/models/transactionsListData.dart';
import 'package:proj42/widget/chart.dart';
import 'package:proj42/widget/transactionsListWidget.dart';

class mainPageWidget extends StatelessWidget {
  // void addNewTransaction(double amount, String name, DateTime date) {
  //   print('new Transaction with value : ' + name + '\t' + amount.toString());
  //   setState(() {
  //     transactionListData.transactionData.add(Transaction(name, amount, date));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.vertical -
        AppBar().preferredSize.height -
        24;
    // print('all height : ' + height.toString());
    // print('padding top : ' + MediaQuery.of(context).padding.vertical.toString());
    // print('app bat height : ' + AppBar().preferredSize.height.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          height: height * 0.30,
          child: Card(elevation: 6, child: ChartWidget()),
        ),
        Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          height: height * 0.7,
          child: Card(elevation: 6, child: TransactionsListWidget()),
        ),
      ],
    );
  }
}
