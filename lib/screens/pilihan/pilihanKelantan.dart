import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/components/easyBadgeCard.dart';
import 'package:waktusolatimprovised/menu.dart';

import 'package:waktusolatimprovised/screens/loadingpages/loadingkelantansikitsikit.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';
import 'package:waktusolatimprovised/components/constants.dart';

class PilihanKelantan extends StatefulWidget {
  final data;

  const PilihanKelantan({Key key, this.data}) : super(key: key);

  @override
  _PilihanKelantanState createState() => _PilihanKelantanState();
}

class _PilihanKelantanState extends State<PilihanKelantan> {
  
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TempatPilihankelantan(
                  tempat: 'Bachok',
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[0],
                  ),
                ),
                TempatPilihankelantan(
                  tempat: 'Bertam',
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[1],
                  ),
                ),
                TempatPilihankelantan(
                  tempat: 'Jeli',
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[2],
                  ),
                ),
                TempatPilihankelantan(
                  tempat: 'Kota Bharu',
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[3],
                  ),
                ),
                TempatPilihankelantan(
                  tempat: 'Kuala Krai',
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[4],
                  ),
                ),
                TempatPilihankelantan(
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[5],
                  ),
                  tempat: 'Machang',
                ),
                TempatPilihankelantan(
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[6],
                  ),
                  tempat: 'Mukim Chiku',
                ),
                TempatPilihankelantan(
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[7],
                  ),
                  tempat: 'Mukim Galas',
                ),
                TempatPilihankelantan(
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[8],
                  ),
                  tempat: 'Pasir Mas',
                ),
                TempatPilihankelantan(
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[9],
                  ),
                  tempat: 'Pasir Puteh',
                ),
                TempatPilihankelantan(
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[10],
                  ),
                  tempat: 'Tanah Merah',
                ),
                TempatPilihankelantan(
                  page: LoadingKelantanSikitSikit(
                    tempatDipilih: kodkelantan[11],
                  ),
                  tempat: 'Tumpat',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TempatPilihankelantan extends StatelessWidget {
  final String tempat;
  final page;
  const TempatPilihankelantan({Key key, this.tempat, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlideRightRoute(page: this.page));
      },
      child: EasyBadgeCard(
        rightBadge: kelantanColour,
        title: this.tempat,
        suffixIcon: Icons.chevron_right,
        suffixIconColor: Colors.green[500],
      ),
    );
  }
}
