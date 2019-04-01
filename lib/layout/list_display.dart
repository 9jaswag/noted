import 'package:flutter/material.dart';
import 'package:noted/layout/list_note.dart';

class ListDisplay extends StatelessWidget {
  const ListDisplay({
    Key key,
    @required this.notes,
  }) : super(key: key);

  final List<String> notes;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return ListNote(
          content: notes[index],
        );
      }, childCount: notes.length),
    );
  }
}
