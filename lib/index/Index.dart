import 'package:flutter/material.dart';

import 'package:seafood/partials/Navbar.dart';
import 'package:seafood/pages/Home.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Home(),
        bottomNavigationBar: Navbar(index: 0,),
      ),
    );
  }
}
