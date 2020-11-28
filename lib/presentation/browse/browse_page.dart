import 'package:flutter/material.dart';
import 'package:melissa_mobile/presentation/browse/browse_model.dart';
import 'package:provider/provider.dart';

class BrowsePage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BrowseModel>(
      create: (_) => BrowseModel()..init(),
      child: Scaffold(
        body: Consumer<BrowseModel>(builder: (context, model, child) {
          return Text("browse page");
        }),
      ),
    );
  }
}
