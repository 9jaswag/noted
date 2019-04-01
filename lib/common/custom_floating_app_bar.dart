import 'package:flutter/material.dart';
import 'package:noted/screens/search.dart';

class CustomFloatingAppBar extends StatelessWidget {
  const CustomFloatingAppBar({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        elevation: 2.0,
        child: ListTile(
          leading: GestureDetector(
            child: Icon(Icons.menu),
            onTap: () => _scaffoldKey.currentState.openDrawer(),
          ),
          title: GestureDetector(
            child: Text(
              "Search your notes",
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () => showSearch(context: context, delegate: Search()),
          ),
          trailing: GestureDetector(
            child: Icon(Icons.view_stream),
            onTap: null,
          ),
        ),
      ),
    );
  }
}
