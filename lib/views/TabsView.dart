import 'package:flutter/material.dart';
import 'MyLocationView.dart';
import 'HomeView.dart';
import 'SearchView.dart';

class TabsView extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<TabsView> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.teal),
      title: 'Home',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Localizer'),
              bottom: TabBar(tabs: <Widget>[
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.my_location), text: 'Find Location'),
                Tab(icon: Icon(Icons.search), text: 'Search Location'),
              ]),
            ),
            body: TabBarView(
                physics: NeverScrollableScrollPhysics( ),
                children: <Widget>[
              HomeView(),
              MyLocationView(),
              SearchView(),
            ])),
      ),
    );
  }
}