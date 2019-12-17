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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: menu.MenuTitle(
          title: 'Waktu Solat',
        ),
      ),
      drawer: menu.Durawa(),
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
          content: Text('Double back to exit app'),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Buttons(negeri: Johor, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Kedah, negeriRoute: "/KedahPilihan"),
                gapBox,
                Buttons(negeri: Kelantan, negeriRoute: "/KelantanPilihan"),
                gapBox,
                Buttons(negeri: Melaka, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: N9, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Pahang, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Penang, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Perak, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Perlis, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Sabah, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Sarawak, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Selangor, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Terengganu, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Putrajaya, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: KualaLumpur, negeriRoute: "/JohorPilihan"),
                gapBox,
                Buttons(negeri: Labuan, negeriRoute: "/JohorPilihan"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
