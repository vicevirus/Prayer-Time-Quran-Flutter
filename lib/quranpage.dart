import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Load local JSON file"),
        ),
        body: Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('images/quran.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());

                  return ListView.builder(
                    // Build the ListView
                    itemBuilder: (BuildContext context, int index) {
                      List text = [
                        new_data['sura'][0]['aya'][index]['_text'],
                      ];
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                               text[0],
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontFamily: "quran" ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: new_data == null
                        ? 0
                        : new_data['sura'][0]['aya'].length,
                  );
                }),
          ),
        ));
  }
}
