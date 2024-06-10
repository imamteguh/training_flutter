import 'package:flutter/material.dart';

import './screens/home_screen.dart';
import './screens/contact_screen.dart';
import './screens/setting_screen.dart';
import './screens/search_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          // brightness: Brightness.dark,
          // primary: Colors.amber,
        ),
        useMaterial3: true,
        // brightness: Brightness.dark,
        primaryColor: Colors.green,
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SettingScreen.routeName: (context) => SettingScreen(),
        ContactScreen.routeName: (context) => ContactScreen(),
        SearchScreen.routeName: (context) => SearchScreen(),
      },
    );
  }
}
