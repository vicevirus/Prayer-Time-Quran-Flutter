import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/menu.dart';

import 'package:waktusolatimprovised/components/sliderightransition.dart';

import '../../quranpage.dart';

class QuranPilihanPage extends StatefulWidget {
  @override
  QuranPilihanPageState createState() => QuranPilihanPageState();
}

class QuranPilihanPageState extends State<QuranPilihanPage> {
  void initState() {
    super.initState();
  }

  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pilihan Surah"),
        ),
        drawer: Durawa(),
        body: Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('images/surahs.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());

                  return ListView.builder(
                    // Build the ListView
                    itemBuilder: (BuildContext context, int index) {
                      List text = [
                        new_data[index]['transliteration_en'],
                      ];

                      List translated = [new_data[index]['translation_en']];

                      return SafeArea(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                SlideRightRoute(
                                    page: QuranPage(
                                  surahDipilih: index,
                                )));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Container(
                                    padding: EdgeInsets.only(top: 20.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        AutoSizeText(
                                          "${text[0]} ",
                                          maxLines: 1,
                                          minFontSize: 40.0,
                                          textAlign: TextAlign.justify,
                                        ),
                                        AutoSizeText(
                                          "${translated[0]} ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w200),
                                          maxLines: 1,
                                          minFontSize: 20.0,
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: new_data == null ? 0 : new_data.length,
                  );
                }),
          ),
        ));
  }
}
