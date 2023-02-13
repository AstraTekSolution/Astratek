import 'package:atweb/providers/page_view_provider.dart';
import 'package:atweb/screens/first_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => PageViewProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirstPage(),
      ),
    );
  }
}
