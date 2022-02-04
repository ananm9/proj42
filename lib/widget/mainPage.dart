import 'package:flutter/material.dart';
import 'package:proj42/widget/chart.dart';
import 'package:proj42/widget/transactionsListWidget.dart';

class mainPageWidget extends StatelessWidget {
  const mainPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.vertical -
        AppBar().preferredSize.height;
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
          height: height * 0.66,
          child: Card(elevation: 6, child: TransactionsListWidget()),
        ),
      ],
    );
  }
}
