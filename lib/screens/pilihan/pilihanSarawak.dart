
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/menu.dart';
import 'package:waktusolatimprovised/screens/loadingpages/loading.dart';
import 'package:waktusolatimprovised/components/easyBadgeCard.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';

class PilihanSarawak extends StatefulWidget {
  @override
  PilihanSarawakState createState() => PilihanSarawakState();
}

class PilihanSarawakState extends State<PilihanSarawak> {

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
                  return TempatPilihanSarawak(
                  tempat: '${lokasisarawak[index]}',
                  page: LoadingPage(
                    tempatDipilih: kodsarawak[index],
                    nextroute: '/SarawakPilihan',
                  ),
                  );
                },
                itemCount: kodsarawak.length,
              ),
            ),
          )),
    );
  }
}


class TempatPilihanSarawak extends StatelessWidget {
  final String tempat;
  final page;
  const TempatPilihanSarawak({Key key, this.tempat, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlideRightRoute(page: this.page));
      },
      child: EasyBadgeCard(
        rightBadge: sarawakColour,
        title: this.tempat,
        suffixIcon: Icons.chevron_right,
        suffixIconColor: Colors.green[500],
      ),
    );
  }
}