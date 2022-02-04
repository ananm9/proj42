import 'package:flutter/material.dart';
import 'package:proj42/models/transactions.dart';
import 'package:intl/intl.dart';
import 'package:proj42/models/transactionsListData.dart';

class TransactionsListWidget extends StatelessWidget {
  TransactionsListWidget({Key? key}) : super(key: key);

  var transactionData = transactionListData.transactionData;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return transactionData.isEmpty
        ? _EmptyTransactionListImageWidget()
        : _ListOfTransactionWidget(
            transactionData: transactionData, width: width);
  }
}

class _EmptyTransactionListImageWidget extends StatelessWidget {
  const _EmptyTransactionListImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/waiting.png',
      fit: BoxFit.contain,
    );
  }
}

class _ListOfTransactionWidget extends StatelessWidget {
  const _ListOfTransactionWidget({
    Key? key,
    required this.transactionData,
    required this.width,
  }) : super(key: key);

  final List<Transaction> transactionData;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactionData.length,
      itemBuilder: (btx, index) {
        return ListTile(
          leading: _PriceViewWidget(
              width: width, transactionData: transactionData, index: index),
          title: Text(transactionData[index].name),
          subtitle:
              Text(DateFormat.yMMMd().format(transactionData[index].date)),
          trailing: _DeleteTransactionWidget(),
        );
      },
    );
  }
}

class _DeleteTransactionWidget extends StatelessWidget {
  const _DeleteTransactionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return TextButton(
      child: Icon(Icons.delete, color: Colors.red),
      onPressed: () {},
    );
  }
}

class _PriceViewWidget extends StatelessWidget {
  const _PriceViewWidget(
      {Key? key,
      required this.width,
      required this.transactionData,
      required this.index})
      : super(key: key);

  final double width;
  final List<Transaction> transactionData;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: width * 0.1,
        child: Container(
          margin: EdgeInsets.all(20),
          child: FittedBox(
              child: Text('${transactionData[index].amount.toString()}\$')),
        ));
  }
}
