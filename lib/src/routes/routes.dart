import 'package:flutter/material.dart';

import 'package:components_flutter/src/pages/home_page.dart';
import 'package:components_flutter/src/pages/alert_page.dart';
import 'package:components_flutter/src/pages/avatar_page.dart';
import 'package:components_flutter/src/pages/card_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return  <String, WidgetBuilder> {
    '/': (context) => HomePage(),
    'alert': (context) => AlertPage(),
    'avatar': (context) => AvatarPage(),
    'card': (context) => CardPage(),
  };
}
