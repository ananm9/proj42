import 'package:flutter/material.dart';
import 'package:proj42/widget/mainPage.dart';
import 'package:proj42/widget/newTransaction.dart';

void main() => runApp(MaterialApp(home: RootWidget()));

class RootWidget extends StatefulWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
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
