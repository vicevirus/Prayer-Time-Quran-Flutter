import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/components/easyBadgeCard.dart';
import 'package:waktusolatimprovised/menu.dart';

import 'package:waktusolatimprovised/screens/loadingpages/loadingkedahsikitsikit.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';
import 'package:waktusolatimprovised/components/constants.dart';

class PilihanKedah extends StatefulWidget {
  final data;

  const PilihanKedah({Key key, this.data}) : super(key: key);

  @override
  _PilihanKedahState createState() => _PilihanKedahState();
}

class _PilihanKedahState extends State<PilihanKedah> {
  
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
                TempatPilihankedah(
                  tempat: 'Baling',
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[0],
                  ),
                ),
                TempatPilihankedah(
                  tempat: 'Bandar Baharu',
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[1],
                  ),
                ),
                TempatPilihankedah(
                  tempat: 'Kota Setar',
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[2],
                  ),
                ),
                TempatPilihankedah(
                  tempat: 'Kuala Muda',
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[3],
                  ),
                ),
                TempatPilihankedah(
                  tempat: 'Kubang Pasu',
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[4],
                  ),
                ),
                TempatPilihankedah(
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[5],
                  ),
                  tempat: 'Kulim',
                ),
                TempatPilihankedah(
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[6],
                  ),
                  tempat: 'Langkawi',
                ),
                TempatPilihankedah(
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[7],
                  ),
                  tempat: 'Padang Terap',
                ),
                TempatPilihankedah(
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[8],
                  ),
                  tempat: 'Pendang',
                ),
                TempatPilihankedah(
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[9],
                  ),
                  tempat: 'Pokok Sena',
                ),
                TempatPilihankedah(
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[10],
                  ),
                  tempat: 'Puncak Gunung Jerai',
                ),
                TempatPilihankedah(
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[11],
                  ),
                  tempat: 'Sik',
                ),
                TempatPilihankedah(
                  page: LoadingKedahSikitSikit(
                    tempatDipilih: kodkedah[12],
                  ),
                  tempat: 'Yan',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TempatPilihankedah extends StatelessWidget {
  final String tempat;
  final page;
  const TempatPilihankedah({Key key, this.tempat, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlideRightRoute(page: this.page));
      },
      child: EasyBadgeCard(
        rightBadge: kedahColour,
        title: this.tempat,
        suffixIcon: Icons.chevron_right,
        suffixIconColor: Colors.green[500],
      ),
    );
  }
}
