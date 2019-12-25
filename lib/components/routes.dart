import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/screens/loadingpages/loading.dart';
import 'package:waktusolatimprovised/screens/loadingpages/loadinglocation.dart';
import 'package:waktusolatimprovised/screens/negeri/waktusolatpapar.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihan.dart';
import 'package:waktusolatimprovised/screens/negeri/waktusolatoffline.dart';
import 'package:waktusolatimprovised/screens/pilihan/quranpilihan.dart';
import '../profile.dart';
import '../quranpage.dart';
import 'sliderightransition.dart';
import 'package:waktusolatimprovised/waktusolatpage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Pilihan args = settings.arguments;

    switch (settings.name) {
      case '/':
        return SlideRightRoute(page: WaktuSolatPage());
      case '/Loading':
        return SlideRightRoute(page: LoadingPage());
        case '/Profile':
        return SlideRightRoute(page: ProfilePage());
      case '/Pilihan':
        return SlideRightRoute(
            page: Pilihan(
          negeriDipilih: args.negeriDipilih,
          negeriRoute: args.negeriRoute,
          kodnegeri: args.kodnegeri,
        ));
      case '/WaktuSolat':
        final WaktuDisplay args2 = settings.arguments;
        return SlideRightRoute(
            page: WaktuDisplay(
          waktusolat: args2.waktusolat,
          route: args2.route,
        ));
      case '/LocationOnline':
        return SlideRightRoute(page: LoadingLocationPage());
      case '/LocationOffline':
        return SlideRightRoute(page: PrayerTimeList());
      case '/QuranPage':
        final QuranPage args3 = settings.arguments;
        return SlideRightRoute(
            page: QuranPage(
          surahDipilih: args3.surahDipilih,
        ));
      case '/QuranPilihanPage':
        return SlideRightRoute(page: QuranPilihanPage());
    }
    return _errorRoute();
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Wrong page'),
        ),
      );
    });
  }
}
