import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Drawer App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Vineet Geek'),
              accountEmail: Text('Contact@vineetgeek.in'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('Vineet'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Category'),
              trailing: Icon(Icons.category),
              onTap: () => Navigator.of(context).pushNamed("/a"),
            ),
            ListTile(
              title: Text('Profile'),
              trailing: Icon(Icons.person),
            ),
            Divider(),
            ListTile(
              title: Text('SignUp'),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Home Page"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cloud_circle),
        onPressed: () {},
      ),
    );
  }
}
