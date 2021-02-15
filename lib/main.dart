import 'package:flutter/material.dart';
import 'src/screens/SignInPage.dart';
import 'src/screens/SignUpPage.dart';
import 'src/screens/HomePage.dart';
import 'src/screens/dashboard/DashboardExplore.dart';
import 'src/screens/recipe/RecipeExplore.dart';
import 'src/screens/ProductPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fryo2',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(pageTitle: 'Welcome'),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignUpPage(),
        '/signin': (BuildContext context) => SignInPage(),
        '/dashboard': (BuildContext context) => DashboardExplore(),
        '/productPage': (BuildContext context) => ProductPage(),
        '/recipe': (BuildContext context) => RecipeExplore(),
      },
    );
  }
}