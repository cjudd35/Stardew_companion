import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class ForageablesScreen extends StatefulWidget {
  const ForageablesScreen({super.key});

  @override
  State<ForageablesScreen> createState() => _ForageablesScreenState();
}

class _ForageablesScreenState extends State<ForageablesScreen> {

  List<dynamic> forageables = [];

  Future<void> loadJson() async {
    
   
  
    String data = await rootBundle.loadString('assets/data/forageables.json');
    var loadedforageables = jsonDecode(data);

    setState((){
      this.forageables = loadedforageables;
    });

    for (var item in forageables) {
      print(item['id']);
      print(item['name']);
    }
  }
  @override
  void initState() {
    super.initState();
    loadJson();
  }

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
              children: forageables.map((item){
                return ExpansionTile(
                  title: Text(item['name']),
                );
              }).toList(),
            )
              



            
          ),
        ),
        ],
      ),
    );
  }
}