import 'package:flutter/material.dart';
import 'ForageablesScreen.dart';

class CraftsRoomScreen extends StatelessWidget {
  const CraftsRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crafts Room'),
      ),  
      body: Column(
        children: [
          Text(
            'Crafts Room',
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context) => const ForageablesScreen(),
                  ),
              );
            },
            child: Text('Spring Foraging Bundle'),
            ),
        ],
      ),
    );
  }
}