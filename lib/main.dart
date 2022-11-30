import 'package:flutter/material.dart';
import 'package:kbc_game/Win.dart';
import 'package:kbc_game/homescreen.dart';
import 'package:kbc_game/lost.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homepage(),
        '1': (context) => WiningnPage(),
        '2': (context) => LostingPage(),
      },
    ),
  );
}
