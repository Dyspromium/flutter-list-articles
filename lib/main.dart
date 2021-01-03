import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:seafood/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(new HomeApp());
  });
}

class HomeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SeaFood',
      routes: router,
    );
  }
}

