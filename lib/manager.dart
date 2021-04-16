import 'package:flutter/material.dart';

class TabsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Send',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Widget> containers = [
    Container(),
    Container(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Send'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Files',
              ),
              Tab(
                text: 'Apps',
              ),
              Tab(
                text: 'Videos',
              ),
              Tab(
                text: 'Photos',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
