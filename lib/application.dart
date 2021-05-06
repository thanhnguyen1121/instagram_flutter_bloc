import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc_instagram/utils/custom_theme.dart';
import './pages/select_page/select_page.dart';

import 'pages/home_page/home_page.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.light,
      home: SelectPage(),
    );
  }
}
