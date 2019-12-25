import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'waktusolatpage.dart';
import 'profile.dart';
import 'quranpage.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

class MenuTitle extends StatelessWidget {

  final String title;

  const MenuTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      backgroundColor: Colors.transparent,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
    );
  }
}

class Durawa extends StatelessWidget {
  const Durawa({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void changeBrightness() {
      DynamicTheme.of(context).setBrightness(
          Theme.of(context).brightness == Brightness.dark
              ? Brightness.light
              : Brightness.dark);
    }

    return WillPopScope(
      onWillPop: () async => false,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.only(top: 1.0, bottom: 0.0),
              child: GradientCard(
                gradient: Gradients.cosmicFusion,
                shadowColor: Gradients.taitanum.colors.last.withOpacity(0.25),
                elevation: 8,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Menu',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
            ),
            GradientButton(
              increaseWidthBy: 200.0,
              increaseHeightBy: 20.0,
              child: Text(
                'Waktu Solat',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              callback: () {
                Navigator.pushNamed(context, '/');
              },
              gradient: Gradients.tameer,
              elevation: 20.0,
              shadowColor: Gradients.backToFuture.colors.last.withOpacity(0.25),
            ),
            SizedBox(
              height: 10.0,
            ),
            GradientButton(
              increaseWidthBy: 200.0,
              increaseHeightBy: 20.0,
              child: Text(
                'Al-Quran',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              callback: () {
                Navigator.pushNamed(context, '/QuranPilihanPage');
              },
              gradient: Gradients.tameer,
              elevation: 20.0,
              shadowColor: Gradients.backToFuture.colors.last.withOpacity(0.25),
            ),
            SizedBox(
              height: 10.0,
            ),
            GradientButton(
              increaseWidthBy: 200.0,
              increaseHeightBy: 20.0,
              child: Text(
                'About',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              callback: () {
                Navigator.pushNamed(context, '/Profile');
              },
              gradient: Gradients.tameer,
              elevation: 20.0,
              shadowColor: Gradients.backToFuture.colors.last.withOpacity(0.25),
            ),
            SizedBox(
              height: 280.0,
            ),
            Container(
              child: GradientButton(
                increaseWidthBy: 180.0,
                increaseHeightBy: 20.0,
                child: Text(
                  'Dark/Light Mode',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w300),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                callback: () {
                  changeBrightness();
                },
                gradient: Gradients.hersheys,
                elevation: 200.0,
                shadowColor:
                    Gradients.cosmicFusion.colors.last.withOpacity(0.30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
