import 'package:flutter/material.dart';
import 'package:untitled2/ui/Page12.dart';
import 'package:untitled2/ui/Page9.dart';
import 'package:untitled2/ui/cyberhawk.dart';
import 'package:untitled2/ui/page13.dart';
import 'package:untitled2/ui/page15.dart';
import 'package:untitled2/ui/page17.dart';



class Page14 extends StatefulWidget {
  const Page14({Key? key}) : super(key: key);

  @override
  State<Page14> createState() => _Page14State();
}

class _Page14State extends State<Page14> {




  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Cyber(

    ),
    Page9(

    ),
    Page13(

    ),
    Page15(

    ),
    Page17(

    ),
    Page12(

    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Picture'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Image'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Icon'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

}