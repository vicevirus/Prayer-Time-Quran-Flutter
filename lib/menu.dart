import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'waktusolatpage.dart';
import 'profile.dart';
import 'quranpage.dart';
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
            Container(
              height: 90.0,
              child: DrawerHeader(
                child: Text(
                  'Menu',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              color: kalerTema,
            ),
            Card(
              color: kalerTema,
              child: ListTile(
                title: Text(
                  'Waktu Solat',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                      fontSize: 30.0),
                ),
                leading: Icon(
                  Icons.alarm,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WaktuSolatPage()));
                },
              ),
            ),
            Card(
              color: kalerTema,
              child: ListTile(
                title: Text(
                  'Quran Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                      fontSize: 30.0),
                ),
                leading: Icon(
                  Icons.book,
                  color: Colors.white,
                ),
                onTap: () {
                },
              ),
            ),
            Card(
              color: kalerTema,
              child: ListTile(
                title: Text(
                  'Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                      fontSize: 30.0),
                ),
                leading: Icon(
                  Icons.alarm,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Card(
                margin: EdgeInsets.only(top: 350.0),
                color: kalerTema,
                child: ListTile(
                  title: Text(
                    'Dark/Light Toggle',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                        fontSize: 30.0),
                  ),
                  leading: Icon(
                    Icons.lightbulb_outline,
                    color: Colors.white,
                  ),
                  onTap: () {
                    changeBrightness();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
