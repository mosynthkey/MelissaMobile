import 'package:flutter/material.dart';
import 'package:melissa_mobile/presentation/browse/browse_page.dart';
import 'package:melissa_mobile/presentation/control/control_page.dart';
import 'package:melissa_mobile/presentation/memo/memo_page.dart';
import 'package:melissa_mobile/presentation/top/top_model.dart';
import 'package:melissa_mobile/presentation/wave/wave_page.dart';
import 'package:provider/provider.dart';

class TopPage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TopModel>(
      create: (_) => TopModel()..init(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("MelissaMobile"),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return _topPageBody(context);
          },
        ),
        bottomNavigationBar:
            Consumer<TopModel>(builder: (context, model, child) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.audiotrack),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'browse',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: 'control',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.app_registration),
                label: 'memo',
              ),
            ],
            currentIndex: model.menuIndex,
            selectedItemColor: Colors.amber[800],
            onTap: (index) {
              model.changeIndex(index);
            },
          );
        }),
      ),
    );
  }

  Widget _topPageBody(BuildContext context) {
    final model = Provider.of<TopModel>(context);
    final currentIndex = model.menuIndex;
    return Stack(
      children: <Widget>[
        _tabPage(currentIndex, 0, WavePage()),
        _tabPage(currentIndex, 1, BrowsePage()),
        _tabPage(currentIndex, 2, ControlPage()),
        _tabPage(currentIndex, 3, MemoPage()),
      ],
    );
  }

  Widget _tabPage(int currentIndex, int tabIndex, StatelessWidget page) {
    return Visibility(
      visible: currentIndex == tabIndex,
      maintainState: true,
      child: page,
    );
  }
}
