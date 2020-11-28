import 'package:flutter/material.dart';
import 'package:melissa_mobile/presentation/memo/memo_model.dart';
import 'package:provider/provider.dart';

class MemoPage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MemoModel>(
      create: (_) => MemoModel()..init(),
      child: Scaffold(
        body: Consumer<MemoModel>(builder: (context, model, child) {
          return Text("memo page");
        }),
      ),
    );
  }
}
