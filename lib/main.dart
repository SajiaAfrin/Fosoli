import 'package:flutter/material.dart';
import 'package:fosoli/screens/details/details.dart';
import 'package:fosoli/screens/favorite/favorite.dart';
import 'package:fosoli/screens/home/home.dart';
import 'package:fosoli/screens/option/option.dart';

import 'screens/video/video_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path: (ctx)=> HomeScreen(),
        DetailScreen.path: (ctx)=> DetailScreen(),
        FavoriteScreen.path: (ctx)=> FavoriteScreen(),
        VideoScreen.path: (ctx)=> VideoScreen(),
      },
    );
  }
}
