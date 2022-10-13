import 'package:flutter/material.dart';
import 'package:whatsap_ui/home_page.dart';
import 'package:whatsap_ui/settings_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        color: Color(0xff075E55),
      )),
      home: const HomePage(),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        SettingsPages.id: (context) => const SettingsPages(),
      },
    );
  }
}
