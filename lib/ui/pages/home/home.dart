import 'package:flutter/material.dart';

import 'home_content.dart';

class JJHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('美食库'),
      ),
      body: JJHomeContent(),
    );
  }
}