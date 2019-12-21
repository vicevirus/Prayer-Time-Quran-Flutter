import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/screens/loadingpages/loading.dart';
import 'package:waktusolatimprovised/screens/loadingpages/loadinglocation.dart';
import 'package:waktusolatimprovised/screens/negeri/waktusolatpapar.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihan.dart';
import 'package:waktusolatimprovised/screens/negeri/waktusolatoffline.dart';
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
