import 'package:flutter/material.dart';
import 'screens/ForageablesScreen.dart';
import 'screens/CraftsRoomScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stardew Companion',
      home: const CraftsRoomScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      
    );
  }
}


