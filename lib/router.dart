import 'package:flutter/material.dart';

import 'package:seafood/configs/routes.dart';
import 'package:seafood/index/Index.dart';

final router = {
  routes.home: (BuildContext context) => new Index(),
  routes.index: (BuildContext context) => new Index()
};