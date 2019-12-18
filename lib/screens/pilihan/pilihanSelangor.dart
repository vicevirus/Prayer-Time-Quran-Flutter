
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/menu.dart';
import 'package:waktusolatimprovised/screens/loadingpages/loading.dart';
import 'package:waktusolatimprovised/components/easyBadgeCard.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';

class PilihanSelangor extends StatefulWidget {
  @override
  PilihanSelangorState createState() => PilihanSelangorState();
}

class PilihanSelangorState extends State<PilihanSelangor> {

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
                  return TempatPilihanSelangor(
                  tempat: '${lokasiselangor[index]}',
                  page: LoadingPage(
                    tempatDipilih: kodselangor[index],
                    nextroute: '/SelangorPilihan',
                  ),
                  );
                },
                itemCount: kodselangor.length,
              ),
            ),
          )),
    );
  }
}


class TempatPilihanSelangor extends StatelessWidget {
  final String tempat;
  final page;
  const TempatPilihanSelangor({Key key, this.tempat, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlideRightRoute(page: this.page));
      },
      child: EasyBadgeCard(
        rightBadge: selangorColour,
        title: this.tempat,
        suffixIcon: Icons.chevron_right,
        suffixIconColor: Colors.green[500],
      ),
    );
  }
}