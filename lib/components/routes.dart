import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/screens/loadingpages/loading.dart';
import 'package:waktusolatimprovised/screens/loadingpages/loadinglocation.dart';
import 'package:waktusolatimprovised/screens/negeri/waktusolatpapar.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanJohor.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanMelaka.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanN9.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanPahang.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanPenang.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanPerak.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanPerlis.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanSabah.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanSarawak.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanSelangor.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanTerengganu.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanwpkl.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanwplabuan.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanwpputrajaya.dart';
import 'package:waktusolatimprovised/screens/waktusolatoffline.dart';
import 'sliderightransition.dart';
import 'package:waktusolatimprovised/waktusolatpage.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanKedah.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanKelantan.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return SlideRightRoute(page: WaktuSolatPage());
      case '/Loading':
        return SlideRightRoute(page: LoadingPage());
      case '/JohorPilihan':
        return SlideRightRoute(page: PilihanJohor());
      case '/WaktuSolat':
        return SlideRightRoute(page: WaktuDisplay());
      case '/KedahPilihan':
        return SlideRightRoute(page: PilihanKedah());
      case '/KelantanPilihan':
        return SlideRightRoute(page: PilihanKelantan());
      case '/MelakaPilihan':
        return SlideRightRoute(page: PilihanMelaka());
      case '/PilihanN9':
        return SlideRightRoute(page: PilihanN9());
      case '/PahangPilihan':
        return SlideRightRoute(page: PilihanPahang());
      case '/PenangPilihan':
        return SlideRightRoute(page: PilihanPenang());
      case '/PerakPilihan':
        return SlideRightRoute(page: PilihanPerak());
      case '/PerlisPilihan':
        return SlideRightRoute(page: PilihanPerlis());
      case '/SabahPilihan':
        return SlideRightRoute(page: PilihanSabah());
      case '/SarawakPilihan':
        return SlideRightRoute(page: PilihanSarawak());
      case '/SelangorPilihan':
        return SlideRightRoute(page: PilihanSelangor());
      case '/TerengganuPilihan':
        return SlideRightRoute(page: PilihanTerengganu());
      case '/WPPutrajayaPilihan':
        return SlideRightRoute(page: PilihanWPPutrajaya());
      case '/WPKualaLumpurPilihan':
        return SlideRightRoute(page: PilihanWPKualaLumpur());
      case '/WPLabuanPilihan':
        return SlideRightRoute(page: PilihanWPLabuan());
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
