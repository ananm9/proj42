import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewTransactionWidget extends StatelessWidget {
  const NewTransactionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('MediaQuery.of(context).viewInsets.bottom : ' +
        MediaQuery.of(context).viewInsets.bottom.toString());
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('dd'),
      ],
    ));
  }
}
