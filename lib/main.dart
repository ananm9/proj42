import 'package:flutter/material.dart';
import 'package:proj42/widget/mainPage.dart';

void main() => runApp(RootWidget());

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  void addNewTansaction() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: addNewTansaction, icon: Icon(Icons.add))
          ],
        ),
        body: SafeArea(child: mainPageWidget()),
      ),
    ));
  }
}
