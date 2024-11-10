import 'package:flutter/material.dart';
import 'package:news_api/Provider/NewsApiProvider.dart';
import 'package:news_api/Screens/ShowDataScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
                create: (context) => NewsApiProvider(),
            ),
          ],
          child: Showdatascreen()
      ),
    );
  }
}