import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/menu.dart';

class QuranPage extends StatefulWidget {
  final surahDipilih;

  const QuranPage({Key key, this.surahDipilih}) : super(key: key);
  @override
  QuranPageState createState() => QuranPageState();
}

class QuranPageState extends State<QuranPage> {
  ScrollController _arrowsController = ScrollController();
  List data;

  var text;
  var translateM;
  var translateEN;
  var surahName;

  @override
  Widget build(BuildContext context) {
    Future<dynamic> loadJson() async {
      String quranText =
          await DefaultAssetBundle.of(context).loadString("images/quran.json");
      String quranMalayTranslate = await DefaultAssetBundle.of(context)
          .loadString("images/quranterjemahan.json");
      String quranEnglishTranslate = await DefaultAssetBundle.of(context)
          .loadString("images/englishtranslation.json");
      String quranTransliteration =
          await DefaultAssetBundle.of(context).loadString('images/surahs.json');
      return {
        text = quranText,
        translateM = quranMalayTranslate,
        translateEN = quranEnglishTranslate,
        surahName = quranTransliteration
      };
    }

    return Scaffold(
        appBar: AppBar(),
        drawer: Durawa(),
        body: Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                future: loadJson(),
                builder: (context, snapshot) {
                  if (text == null && translateM == null) {
                    return CircularProgressIndicator();
                  }
                  var quranText = json.decode(text);
                  var quranTranslationM = json.decode(translateM);
                  var quranTranslationEN = json.decode(translateEN);
                  var surahNama = json.decode(surahName);

                  // Decode the JSONR

                  return ListView.builder(
                    controller: _arrowsController,

                    // Build the ListView
                    itemBuilder: (BuildContext context, int index) {
                      List text = [
                        quranText['sura'][widget.surahDipilih]['aya'][index]
                            ['_text'],
                        quranTranslationM[widget.surahDipilih]['aya'][index]
                            ['@text'],
                        quranTranslationEN[widget.surahDipilih]['aya'][index]
                            ['@text'],
                        surahNama[widget.surahDipilih]['transliteration_en']
                      ];
                      var arabicText;
                      var malayText;
                      var englishText;
                      var namaSurah;

                      arabicText = text[0];
                      malayText = text[1];
                      englishText = text[2];
                      namaSurah = text[3];

                      return SafeArea(
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 45,
                              ),
                              Flexible(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        alignment: Alignment.topRight,
                                        child: AutoSizeText(
                                          "$arabicText",
                                          style: TextStyle(
                                              fontFamily: 'quran',
                                              fontSize: 32),
                                          textAlign: TextAlign.end,
                                        )),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Card(
                                        child: Text(
                                          "$namaSurah  ${index + 1}",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Color(0xFFFFFF80FF)),
                                        ),
                                      ),
                                    ),
                                    Text('English Translation'),
                                    Container(
                                      child: Card(
                                        child: Text(
                                          "$englishText",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w300),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),
                                    Text('Malay Translation'),
                                    Container(
                                      child: Card(
                                          child: Text(
                                        "$malayText",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w300),
                                        textAlign: TextAlign.justify,
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: text.length,
                  );
                }),
          ),
        ));
  }
}
