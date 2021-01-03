import 'package:flutter/material.dart';

import 'package:seafood/index/Index.dart';
import 'package:seafood/pages/Categories.dart';

class Navbar extends StatefulWidget {

  final int index;

  Navbar({Key key, this.index}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  void _onItemTapped(int index) {
    setState(() {
      if(index == 0 || index ==1){
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Index(),
            )
        );
      }
      else{
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Categories(),
            )
        );
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wb_sunny,size: 0,),
          title: RichText(
            text:new TextSpan(
              style: new TextStyle(
                fontSize: 22,
              ),
              children: <TextSpan>[
                new TextSpan(text: 'Sea', style: new TextStyle(color: Color.fromRGBO(109, 109, 109, 1))),
                new TextSpan(text: 'Food', style: new TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(240, 111, 83, 1))),
              ],
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted),
          title: Container(height: 0.0),
        ),
      ],
      currentIndex: widget.index,
      selectedItemColor: Color.fromRGBO(240, 111, 83, 1),
      onTap: _onItemTapped,
    );
  }
}
