import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/screens/negeri/locationfinderonline.dart';
import 'package:waktusolatimprovised/screens/negeri/waktusolatpapar.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihanJohor.dart';
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
      case '/JohorPilihan':
      return SlideRightRoute(page: PilihanJohor());
      case '/WaktuSolat':
      return SlideRightRoute(page: WaktuDisplay()); 
      case '/KedahPilihan':
      return SlideRightRoute(page: PilihanKedah());
      case '/KelantanPilihan':
      return SlideRightRoute(page: PilihanKelantan());
    }
    return _errorRoute();
  }
  static Route<dynamic> _errorRoute () {
    return MaterialPageRoute(builder: (_) {

      return Scaffold(
        appBar: AppBar(title: Text('Wrong page'),),
      );
    });
  
}
}