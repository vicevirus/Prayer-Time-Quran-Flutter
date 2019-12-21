import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/menu.dart' as menu;
import 'components/negeributtons.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WaktuSolat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WaktuSolatPage(),
    );
  }
}

class WaktuSolatPage extends StatefulWidget {
  @override
  _WaktuSolatPageState createState() => _WaktuSolatPageState();
}

class _WaktuSolatPageState extends State<WaktuSolatPage> {
  @override
  Widget build(BuildContext context) {
    DateTime currentBackPressTime;
    Future<bool> onWillPop() {
      DateTime now = DateTime.now();
      if (currentBackPressTime == null ||
          now.difference(currentBackPressTime) > Duration(seconds: 2)) {
        currentBackPressTime = now;
        Fluttertoast.showToast(msg: 'Double tap to exit');
        return Future.value(false);
      }
      return SystemNavigator.pop();
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: menu.MenuTitle(
          title: 'Waktu Solat',
        ),
      ),
      drawer: menu.Durawa(),
      body: WillPopScope(
        onWillPop: onWillPop,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        child: Text(
                          'Offline / Waktu Solat Luar Talian',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        color: kalerTema,
                      )
                    ],
                  ),
                ),
                ButtonsLocation(
                  negeri: LokasiOffline,
                  negeriRoute: "/LocationOffline",
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        child: Text(
                          'Online / Waktu Solat Atas Talian',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        color: kalerTema,
                      )
                    ],
                  ),
                ),
                ButtonsLocation(
                  negeri: LokasiOnline,
                  negeriRoute: "/LocationOnline",
                ),
                gapBox,
                Buttons(
                  negeri: Johor,
                  negeriDipilih: lokasijohor,
                  negeriKod: kodjohor,
                ),
                gapBox,
                Buttons(
                  negeri: Kedah,
                  negeriDipilih: lokasikedah,
                  negeriKod: kodkedah,
                ),
                gapBox,
                Buttons(
                  negeri: Kelantan,
                  negeriDipilih: lokasikelantan,
                  negeriKod: kodkelantan,
                ),
                gapBox,
                Buttons(
                  negeri: Melaka,
                  negeriDipilih: lokasimelaka,
                  negeriKod: kodmelaka,
                ),
                gapBox,
                Buttons(
                  negeri: N9,
                  negeriDipilih: lokasin9,
                  negeriKod: kodn9,
                ),
                gapBox,
                Buttons(
                  negeri: Pahang,
                  negeriDipilih: lokasipahang,
                  negeriKod: kodpahang,
                ),
                gapBox,
                Buttons(
                  negeri: Penang,
                  negeriDipilih: lokasipenang,
                  negeriKod: kodpenang,
                ),
                gapBox,
                Buttons(
                  negeri: Perak,
                  negeriDipilih: lokasiperak,
                  negeriKod: kodperak,
                ),
                gapBox,
                Buttons(
                  negeri: Perlis,
                  negeriDipilih: lokasiperlis,
                  negeriKod: kodperlis,
                ),
                gapBox,
                Buttons(
                  negeri: Sabah,
                  negeriDipilih: lokasisabah,
                  negeriKod: kodsabah,
                ),
                gapBox,
                Buttons(
                  negeri: Sarawak,
                  negeriDipilih: lokasisarawak,
                  negeriKod: kodsarawak,
                ),
                gapBox,
                Buttons(
                  negeri: Selangor,
                  negeriDipilih: lokasiselangor,
                  negeriKod: kodselangor,
                ),
                gapBox,
                Buttons(
                  negeri: Terengganu,
                  negeriDipilih: lokasiterengganu,
                  negeriKod: kodterengganu,
                ),
                gapBox,
                Buttons(
                  negeri: Putrajaya,
                  negeriDipilih: lokasiputrajaya,
                  negeriKod: kodputrajaya,
                ),
                gapBox,
                Buttons(
                  negeri: KualaLumpur,
                  negeriDipilih: lokasikl,
                  negeriKod: kodkl,
                ),
                gapBox,
                Buttons(
                    negeri: Labuan,
                    negeriDipilih: lokasilabuan,
                    negeriKod: kodlabuan),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
