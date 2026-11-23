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
  List<dynamic> springForageablesBundleItems = [];

  Future<void> loadJson() async {
    
   
  
    String data = await rootBundle.loadString('assets/data/forageables.json');
    var loadedForageables = jsonDecode(data);


    setState((){
      forageables = loadedForageables;
      
      springForageablesBundleItems = [];

      
    for (var item in loadedForageables){
      var communityCenter = item['community_center'];

      bool inBundle = false;

      for (var cc in communityCenter) {
        if (cc['bundle'] == 'Spring Foraging') {
          inBundle = true;
        }
      }

      if (inBundle){
        springForageablesBundleItems.add(item);
      }
    }
    });

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
              children: springForageablesBundleItems.map((item){
                    var lable = 
                    item['obtain']['locations'].length > 1
                    ? 'Locations:'
                    : 'Location:';
                return ExpansionTile(
                  title: Text(item['name']),
                  children: [
                    Text(lable),
                    ...item['obtain']['locations'].map<Widget>((location){
                      return Text('- $location');
                    })
                  ],
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