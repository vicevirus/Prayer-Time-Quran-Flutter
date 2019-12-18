
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/menu.dart';
import 'package:waktusolatimprovised/screens/loadingpages/loading.dart';
import 'package:waktusolatimprovised/components/easyBadgeCard.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';

class PilihanTerengganu extends StatefulWidget {
  @override
  PilihanTerengganuState createState() => PilihanTerengganuState();
}

class PilihanTerengganuState extends State<PilihanTerengganu> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushReplacementNamed(context, '/');
      },
          child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: MenuTitle(
              title: 'Pilihan Kawasan',
            ),
          ),
          drawer: Durawa(),
          backgroundColor: kalerTema,
          body: Container(
            child: Center(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return TempatPilihanTerengganu(
                  tempat: '${lokasiterengganu[index]}',
                  page: LoadingPage(
                    tempatDipilih: kodterengganu[index],
                    nextroute: '/TerengganuPilihan',
                  ),
                  );
                },
                itemCount: kodterengganu.length,
              ),
            ),
          )),
    );
  }
}


class TempatPilihanTerengganu extends StatelessWidget {
  final String tempat;
  final page;
  const TempatPilihanTerengganu({Key key, this.tempat, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlideRightRoute(page: this.page));
      },
      child: EasyBadgeCard(
        rightBadge: terengganuColour,
        title: this.tempat,
        suffixIcon: Icons.chevron_right,
        suffixIconColor: Colors.green[500],
      ),
    );
  }
}