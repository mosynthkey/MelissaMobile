import 'package:flutter/material.dart';
import 'package:melissa_mobile/presentation/control/control_model.dart';
import 'package:provider/provider.dart';

class ControlPage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ControlModel>(
      create: (_) => ControlModel()..init(),
      child: Scaffold(
        body: Consumer<ControlModel>(builder: (context, model, child) {
          return Text("control page");
        }),
      ),
    );
  }
}
