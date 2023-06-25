import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ynclasshouse/consts/colors.dart';
import 'package:ynclasshouse/home/controller.dart';
import 'package:ynclasshouse/home/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Controller(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              fontFamily: 'Poirate',
              appBarTheme: const AppBarTheme(
                elevation: 0,
                centerTitle: false,
                backgroundColor: kPromaryColor,
                toolbarHeight: 177,
              ),
              textTheme: const TextTheme(
                titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: 'Poirate',
                    color: Colors.white),
                titleMedium: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    fontFamily: 'Poirate',
                    color: Colors.white),
                titleSmall: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white),
              ),
              textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(foregroundColor: Colors.white))),
          title: 'YN CLASSHOUSE',
          home: const HomePage()),
    );
  }
}
