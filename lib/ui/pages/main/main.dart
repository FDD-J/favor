
import 'package:flutter/material.dart';
import 'initialize_item.dart';

class JJMainScreen extends StatefulWidget {
  static const String routeName = "/";
  
  @override
  _JJMainScreenState createState() => _JJMainScreenState();
}

class _JJMainScreenState extends State<JJMainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index:  _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: items,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}