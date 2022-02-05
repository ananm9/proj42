import 'package:flutter/material.dart';
import 'package:proj42/widget/mainPage.dart';
import 'package:proj42/widget/newTransaction.dart';

void main() => runApp(MaterialApp(home: RootWidget()));

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  void addNewTansactionSheet(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewTransactionWidget();
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => addNewTansactionSheet(context),
                icon: Icon(Icons.add))
          ],
        ),
        body: SafeArea(child: mainPageWidget()),
      ),
    );
  }
}
