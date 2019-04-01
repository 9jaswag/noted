import 'package:flutter/material.dart';
import 'package:noted/screens/search.dart';

class CustomFloatingAppBar extends StatefulWidget {
  const CustomFloatingAppBar(
      {Key key,
      @required GlobalKey<ScaffoldState> scaffoldKey,
      @required this.callback,
      @required this.isGrid})
      : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final callback;
  final bool isGrid;

  @override
  _CustomFloatingAppBarState createState() => _CustomFloatingAppBarState();
}

class _CustomFloatingAppBarState extends State<CustomFloatingAppBar> {
  Icon list = Icon(Icons.view_stream);
  Icon grid = Icon(Icons.view_module);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        elevation: 1.5,
        child: ListTile(
          leading: GestureDetector(
            child: Icon(Icons.menu),
            onTap: () => widget._scaffoldKey.currentState.openDrawer(),
          ),
          title: GestureDetector(
            child: Text(
              "Search your notes",
              style: TextStyle(color: Colors.grey[600], fontSize: 14.0),
            ),
            onTap: () => showSearch(context: context, delegate: Search()),
          ),
          trailing: GestureDetector(
            child: widget.isGrid ? list : grid,
            onTap: () {
              setState(() {
                widget.callback();
              });
            },
          ),
        ),
      ),
    );
  }
}
