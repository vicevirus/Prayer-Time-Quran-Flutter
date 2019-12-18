import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/components/routes.dart';
import 'package:waktusolatimprovised/menu.dart' as menu;
import 'screens/waktusolatoffline.dart';
import 'components/negeributtons.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
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
  Position _currentPosition;

  getPrayerTimes() async {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    await geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

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
                          'Online / Waktu Solat Atas Talian',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        color: kalerTema,
                      )
                    ],
                  ),
                ),
                Buttons(negeri: LokasiOnline, negeriRoute: "/LocationOnline"),
                gapBox,
                Buttons(negeri: Johor, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Kedah, negeriRoute: "/KedahPilihan"),
                gapBox,
                Buttons(negeri: Kelantan, negeriRoute: "/KelantanPilihan"),
                gapBox,
                Buttons(negeri: Melaka, negeriRoute: "/MelakaPilihan"),
                gapBox,
                Buttons(negeri: N9, negeriRoute: "/N9Pilihan"),
                gapBox,
                Buttons(negeri: Pahang, negeriRoute: "/PahangPilihan"),
                gapBox,
                Buttons(negeri: Penang, negeriRoute: "/PenangPilihan"),
                gapBox,
                Buttons(negeri: Perak, negeriRoute: "/PerakPilihan"),
                gapBox,
                Buttons(negeri: Perlis, negeriRoute: "/PerlisPilihan"),
                gapBox,
                Buttons(negeri: Sabah, negeriRoute: "/SabahPilihan"),
                gapBox,
                Buttons(negeri: Sarawak, negeriRoute: "/SarawakPilihan"),
                gapBox,
                Buttons(negeri: Selangor, negeriRoute: "/SelangorPilihan"),
                gapBox,
                Buttons(negeri: Terengganu, negeriRoute: "/TerengganuPilihan"),
                gapBox,
                Buttons(negeri: Putrajaya, negeriRoute: "/WPPutrajayaPilihan"),
                gapBox,
                Buttons(
                    negeri: KualaLumpur, negeriRoute: "/WPKualaLumpurPilihan"),
                gapBox,
                Buttons(negeri: Labuan, negeriRoute: "/WPLabuanPilihan"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
