import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class ForageablesScreen extends StatelessWidget {
  const ForageablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB
            (34, 50, 34, 16),
            child: Text(
              'Spring Forageables Bundle',
              style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          ),

        Expanded(
          child: SingleChildScrollView(
            child:Column(
              children:[


                ExpansionTile(
                  title: Text("Daffodil"),
                  children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Season: Spring"),
                        SizedBox(height: 8),
                        Text("Location: The Cindersap Forest, The Secret Woods, The Farm"),
                        SizedBox(height: 8),
                        Text("Bundle: Spring Foraging Bundle"),
                        SizedBox(height: 8),
                        Text("Room: Crafts Room"),
                      ]
                    ),
                  ),
                ],  
              ),

                ExpansionTile(
                  title: Text("Dandelion"),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Season: Spring"),
                          SizedBox(height: 8),
                          Text("Location: The Cindersap Forest, The Secret Woods, The Farm"),
                          SizedBox(height: 8),
                          Text("Bundle: Spring Foraging Bundle"),
                          SizedBox(height: 8),
                          Text("Room: Crafts Room"),
                          SizedBox(height: 8),
                        ]
                      ),
                    ),
                  ],  
                ),

                ExpansionTile(
              title: Text("Leek"),
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Season: Spring"),
                      SizedBox(height: 8),
                      Text("Location: The Cindersap Forest, The Secret Woods, The Farm"),
                      SizedBox(height: 8),
                      Text("Bundle: Spring Foraging Bundle"),
                      SizedBox(height: 8),
                      Text("Room: Crafts Room"),
                    ]
                  ),
                ),
              ],  
            ),

                ExpansionTile(
                  title: Text("Wild Horseradish"),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Season: Spring"),
                      SizedBox(height: 8),
                      Text("Location: The Cindersap Forest, The Secret Woods, The Farm"),
                      SizedBox(height: 8),
                      Text("Bundle: Spring Foraging Bundle"),
                      SizedBox(height: 8),
                      Text("Room: Crafts Room"),
                    ]
                  ),
                ),
              ],  
            ),
            ],
          ),
        ),
        ),
        ],
      ),
    );
  }
}