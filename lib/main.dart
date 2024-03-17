import 'package:calculator/providers/calculate_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator/home_page.dart';
import 'package:calculator/utilities/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculateData(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(appName),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}
