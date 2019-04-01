import 'package:flutter/material.dart';
import 'package:noted/common/app_drawer.dart';
import 'package:noted/common/custom_floating_app_bar.dart';
import 'package:noted/layout/grid_display.dart';
import 'package:noted/layout/list_display.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  final TextEditingController controller = TextEditingController();

  final notes = List.generate(100, (int index) => '$index');
  bool isGrid = true;

  void setDisplayType() {
    setState(() {
      isGrid = !isGrid;
    });
  }

  @override
  Widget build(BuildContext context) {
    var sliverList = ListDisplay(notes: notes);
    var sliverGrid = GridDisplay(notes: notes);

    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                CustomFloatingAppBar(
                  scaffoldKey: _scaffoldKey,
                  callback: setDisplayType,
                  isGrid: isGrid,
                ),
                SizedBox(
                  height: 15.0,
                ),
              ]),
            ),
            isGrid ? sliverGrid : sliverList
          ],
        ),
      ),
    );
  }
}
