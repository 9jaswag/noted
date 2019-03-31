import 'package:flutter/material.dart';
import 'package:noted/common/app_drawer.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    elevation: 5.0,
                    child: ListTile(
                      leading: IconButton(
                        icon: Icon(
                          Icons.menu,
                        ),
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      ),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
// Scaffold.of(context).openDrawer();
