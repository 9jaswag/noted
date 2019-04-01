import 'package:flutter/material.dart';
import 'package:noted/common/app_drawer.dart';
import 'package:noted/common/custom_floating_app_bar.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                CustomFloatingAppBar(scaffoldKey: _scaffoldKey)
              ]),
            )
          ],
        ),
      ),
    );
  }
}

