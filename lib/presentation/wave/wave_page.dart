import 'package:flutter/material.dart';
import 'package:melissa_mobile/presentation/wave/wave_model.dart';
import 'package:provider/provider.dart';
import 'package:seekbar/seekbar.dart';

class WavePage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WaveModel>(
      create: (_) => WaveModel()..init(),
      child: Scaffold(
        body: Consumer<WaveModel>(
          builder: (context, model, child) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  alignment: Alignment.center,
                  width: 400,
                  height: 420,
                  child: Text("wave form"),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  alignment: Alignment.center,
                  child: Text("Title"),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  alignment: Alignment.center,
                  child: Text("artist"),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  alignment: Alignment.center,
                  child: SeekBar(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
