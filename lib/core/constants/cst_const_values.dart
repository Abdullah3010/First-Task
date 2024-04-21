import 'package:flutter/material.dart';

class CSTConstValues {
  final List<int> successStatusCodes = [200, 201, 204];

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final String appName = 'Harry Potter Characters';

  bool isNetworkDisconected = false;
}
