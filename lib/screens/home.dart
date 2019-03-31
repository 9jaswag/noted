import 'package:flutter/material.dart';
import 'package:noted/common/app_drawer.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  final TextEditingController controller = TextEditingController();

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
                    elevation: 2.0,
                    child: ListTile(
                      leading: IconButton(
                        icon: Icon(
                          Icons.menu,
                        ),
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      ),
                      title: TextField(
                        controller: controller,
                        decoration: InputDecoration.collapsed(
                          hintText: "Search your notes",
                        ),
                        autofocus: false,
                        onChanged: null,
                        onTap: null,
                      ),
                      trailing: CircleAvatar(
                        backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1032266310586122240/0jAWyzF3_400x400.jpg'),
                        radius: 15.0,
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
