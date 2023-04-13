import 'package:flutter/material.dart';

import 'screens/tabs-screen.dart';
import 'screens/meal-detail-screen.dart';
import 'screens/category-meals-screen.dart';
import 'screens/categories-screen.dart';

void main() {
  runApp(MyApp());
}
// test here

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spise',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.teal[200],
        canvasColor: Color.fromRGBO(255, 254, 229, 0.8),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(21, 51, 56, 1),
              ),
              bodyText1: TextStyle(color: Color.fromRGBO(20, 54, 54, 1)),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMeals.routeName: (context) => CategoryMeals(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(
      //     builder: (ctx) => CategoriesScreen(),
      //   );
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
