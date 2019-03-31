import 'package:flutter/material.dart';
import 'package:noted/common/app_drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title')),
      drawer: AppDrawer(),
    );
  }
}