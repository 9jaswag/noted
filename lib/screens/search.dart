import 'package:flutter/material.dart';

class Search extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for the appbar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon in appbar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    // show search results
    return Text('Result');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show suggestions before searching
    final suggestionList = query.isEmpty ? 'Show Suggestions' : 'result';
    return Text('Hi');
  }

  // ThemeData appBarTheme(BuildContext context) {
  //   assert(context != null);
  //   final ThemeData theme = Theme.of(context);
  //   assert(theme != null);
  //   return theme.copyWith(
  //     primaryColor: Colors.white,
  //     primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
  //     primaryColorBrightness: Brightness.light,
  //     primaryTextTheme: theme.textTheme,
  //   );
  // }
}
