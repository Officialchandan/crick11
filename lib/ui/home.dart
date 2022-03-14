import 'package:crick11/news/home_news.dart';
import 'package:crick11/ui/live_score_screen.dart';
import 'package:crick11/utility/utility.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;


  static const TextStyle optionStyle =
  TextStyle(fontSize: 25, fontWeight: FontWeight.bold,);
  static  final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'CricNews',
      style: optionStyle,
    ),const Text(
      'LiveScore',
      style: optionStyle,
    ),
    const Text(
      'Home',
      style: optionStyle,
    ),const Text(
      'More',
      style: optionStyle,
    ),
  ];

  static  final List<Widget> _widgetOptionsName = <Widget>[
    HomeNews(),
    const LiveScoreScreen(),
    const Text(
      'Home',
      style: optionStyle,
    ),const Text(
      'More',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   _widgetOptions.elementAt(_selectedIndex),
        backgroundColor: MyColors.primary,
        centerTitle: true,
        elevation: 9.0,
      ),
      body:  _widgetOptionsName.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'CricNews',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_cricket_rounded),
            label: 'LiveScore',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MyColors.primary,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        onTap: _onItemTapped,
      ),
    );
  }
}