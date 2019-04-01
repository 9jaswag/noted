import 'package:flutter/material.dart';
import 'package:noted/layout/grid_note.dart';

class GridDisplay extends StatelessWidget {
  const GridDisplay({
    Key key,
    @required this.notes,
  }) : super(key: key);

  final List<String> notes;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: GridNote(content: notes[index]),
        );
      }, childCount: notes.length),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 2.0 // should be dynamic
      ),
    );
  }
}
