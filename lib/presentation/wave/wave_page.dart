import 'package:flutter/material.dart';
import 'package:melissa_mobile/presentation/wave/wave_model.dart';
import 'package:provider/provider.dart';

class WavePage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WaveModel>(
      create: (_) => WaveModel()..init(),
      child: Scaffold(
        body: Consumer<WaveModel>(builder: (context, model, child) {
          return Text("wave page");
        }),
      ),
    );
  }
}
