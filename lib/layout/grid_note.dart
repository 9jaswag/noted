import 'package:flutter/material.dart';

class GridNote extends StatelessWidget {
  const GridNote({
    Key key,
    @required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0),
          child: Text(content),
        ),
      ),
      onTap: null,
    );
  }
}
