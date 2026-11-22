import 'package:flutter/material.dart';

class ForageablesScreen extends StatelessWidget {
  const ForageablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Spring Forageables', 
              style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold)),
            Text("Daffodil"),
            Text("Dandelion"),
            Text("Leek"),
            Text("Wild Horseradish"),
            Text("Spring Onion"),
            Text("Morel"),
            Text("Common Mushroom"),
            ],
        )
          )
        );
  }
}