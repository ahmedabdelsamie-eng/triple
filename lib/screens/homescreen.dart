import 'package:flutter/material.dart';
import 'package:triple/screens/favorite_units_screen.dart';
import 'package:triple/screens/units_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          toolbarHeight: 60,
          bottom: TabBar(
            labelColor: Colors.deepPurple,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: 'عقاراتى',
              ),
              Tab(
                text: 'العقارات المفضلة',
              )
            ],
          ),
        ),
        body: TabBarView(children: [UnitsScreen(), FavUnitsScreen()]),
      ),
    );
  }
}
