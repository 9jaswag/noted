import 'package:flutter/material.dart';
import 'package:noted/screens/home.dart';

void main() => runApp(Noted());

class Noted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Noted',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0XFF046590),
        fontFamily: 'NunitoSans',
        textTheme: TextTheme(
          headline: TextStyle(fontWeight: FontWeight.w600, fontSize: 30.0,),
          title: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
        )
      ),
      home: Home(),
    );
  }
}
