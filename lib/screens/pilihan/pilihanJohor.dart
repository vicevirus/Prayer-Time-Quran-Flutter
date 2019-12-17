import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/components/easyBadgeCard.dart';
import 'package:waktusolatimprovised/menu.dart';

import 'package:waktusolatimprovised/screens/loadingpages/loadingjohorsikitsikit.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';

class PilihanJohor extends StatefulWidget {
  final data;

  const PilihanJohor({Key key, this.data}) : super(key: key);

  @override
  _PilihanJohorState createState() => _PilihanJohorState();
}

class _PilihanJohorState extends State<PilihanJohor> {
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TempatPilihanJohor(
                  tempat: 'Batu Pahat',
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[0],
                  ),
                ),
                TempatPilihanJohor(
                  tempat: 'Gemas',
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[1],
                  ),
                ),
                TempatPilihanJohor(
                  tempat: 'Johor Bahru',
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[2],
                  ),
                ),
                TempatPilihanJohor(
                  tempat: 'Kluang',
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[3],
                  ),
                ),
                TempatPilihanJohor(
                  tempat: 'Kota Tinggi',
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[4],
                  ),
                ),
                TempatPilihanJohor(
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[5],
                  ),
                  tempat: 'Mersing',
                ),
                TempatPilihanJohor(
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[6],
                  ),
                  tempat: 'Muar',
                ),
                TempatPilihanJohor(
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[7],
                  ),
                  tempat: 'Pemanggil',
                ),
                TempatPilihanJohor(
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[8],
                  ),
                  tempat: 'Pontian',
                ),
                TempatPilihanJohor(
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[9],
                  ),
                  tempat: 'Pulau Aur',
                ),
                TempatPilihanJohor(
                  page: LoadingJohorSikitSikit(
                    tempatDipilih: kodjohor[10],
                  ),
                  tempat: 'Segamat',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TempatPilihanJohor extends StatelessWidget {
  final String tempat;
  final page;
  const TempatPilihanJohor({Key key, this.tempat, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlideRightRoute(page: this.page));
      },
      child: EasyBadgeCard(
        rightBadge: johorColour,
        title: this.tempat,
        suffixIcon: Icons.chevron_right,
        suffixIconColor: Colors.green[500],
      ),
    );
  }
}

