import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: NetworkImage('http://icons.iconarchive.com/icons/pelfusion/long-shadow-ios7/1024/Notes-icon.png'),
                //   // fit: BoxFit.cover,
                // )
                color: Color(0XFF046590)),
            child: Center(
              child: Text(
                'Noted',
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .apply(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.lightbulb_outline),
            title: Text(
              'Notes',
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text(
              'Reminders',
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.add),
            title: Text(
              'Create new label',
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.archive),
            title: Text(
              'Archive',
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete_outline),
            title: Text(
              'Trash',
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text(
              'Help & feedback',
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
