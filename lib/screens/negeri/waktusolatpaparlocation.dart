import 'package:flutter/material.dart';
import 'package:time_formatter/time_formatter.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/menu.dart' as menu;
import 'package:intl/intl.dart';
import 'package:waktusolatimprovised/components/easyBadgeCard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

class WaktuDisplayLocation extends StatefulWidget {
  final waktusolat;
  final route;
  WaktuDisplayLocation({this.waktusolat, this.route});
  @override
  _WaktuDisplayLocationState createState() => _WaktuDisplayLocationState();
}

class _WaktuDisplayLocationState extends State<WaktuDisplayLocation> {
  void initState() {
    super.initState();

    updateUI();
  }

  var tempat;
  var timestampSubuh;
  var isyak;
  var subuh;
  var syuruk;
  var zohor;
  var asar;
  var maghrib;

  void updateUI() {
    setState(() {
      tempat = widget.waktusolat['data']['place'];
      checker();
      subuhTime();
      syurukTime();
      zohorTime();
      asarTime();
      maghribTime();
      isyakTime();
    });
  }

  checker() async {
    bool result = await DataConnectionChecker().hasConnection;
    if (result == true) {
    } else {
      Fluttertoast.showToast(msg: " You dont have an internet connection!");
      Navigator.pushNamed(context, '/');
    }
  }

  void subuhTime() {
    var now = new DateTime.now();
    var format = new DateFormat('h:mma');
    var date = new DateTime.fromMillisecondsSinceEpoch(
        widget.waktusolat['data']['times'][now.day - 1][0] * 1000);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = diff.inDays.toString() + ' DAY AGO';
      } else {
        time = diff.inDays.toString() + ' DAYS AGO';
      }
    } else {
      if (diff.inDays == 7) {
        time = (diff.inDays / 7).floor().toString() + ' WEEK AGO';
      } else {
        time = (diff.inDays / 7).floor().toString() + ' WEEKS AGO';
      }
    }

    subuh = time;
  }

  void syurukTime() {
    var now = new DateTime.now();
    var format = new DateFormat('h:mma');
    var date = new DateTime.fromMillisecondsSinceEpoch(
        widget.waktusolat['data']['times'][now.day - 1][1] * 1000);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = diff.inDays.toString() + ' DAY AGO';
      } else {
        time = diff.inDays.toString() + ' DAYS AGO';
      }
    } else {
      if (diff.inDays == 7) {
        time = (diff.inDays / 7).floor().toString() + ' WEEK AGO';
      } else {
        time = (diff.inDays / 7).floor().toString() + ' WEEKS AGO';
      }
    }

    syuruk = time;
  }

  void zohorTime() {
    var now = new DateTime.now();
    var format = new DateFormat('h:mma');
    var date = new DateTime.fromMillisecondsSinceEpoch(
        widget.waktusolat['data']['times'][now.day - 1][2] * 1000);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = diff.inDays.toString() + ' DAY AGO';
      } else {
        time = diff.inDays.toString() + ' DAYS AGO';
      }
    } else {
      if (diff.inDays == 7) {
        time = (diff.inDays / 7).floor().toString() + ' WEEK AGO';
      } else {
        time = (diff.inDays / 7).floor().toString() + ' WEEKS AGO';
      }
    }

    zohor = time;
  }

  void asarTime() {
    var now = new DateTime.now();
    var format = new DateFormat('h:mma');
    var date = new DateTime.fromMillisecondsSinceEpoch(
        widget.waktusolat['data']['times'][now.day - 1][3] * 1000);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = diff.inDays.toString() + ' DAY AGO';
      } else {
        time = diff.inDays.toString() + ' DAYS AGO';
      }
    } else {
      if (diff.inDays == 7) {
        time = (diff.inDays / 7).floor().toString() + ' WEEK AGO';
      } else {
        time = (diff.inDays / 7).floor().toString() + ' WEEKS AGO';
      }
    }

    asar = time;
  }

  void maghribTime() {
    var now = new DateTime.now();
    var format = new DateFormat('h:mma');
    var date = new DateTime.fromMillisecondsSinceEpoch(
        widget.waktusolat['data']['times'][now.day - 1][4] * 1000);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = diff.inDays.toString() + ' DAY AGO';
      } else {
        time = diff.inDays.toString() + ' DAYS AGO';
      }
    } else {
      if (diff.inDays == 7) {
        time = (diff.inDays / 7).floor().toString() + ' WEEK AGO';
      } else {
        time = (diff.inDays / 7).floor().toString() + ' WEEKS AGO';
      }
    }

    maghrib = time;
  }

  void isyakTime() {
    var now = new DateTime.now();
    var format = new DateFormat('h:mma');
    var date = new DateTime.fromMillisecondsSinceEpoch(
        widget.waktusolat['data']['times'][now.day - 1][5] * 1000);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = diff.inDays.toString() + ' DAY AGO';
      } else {
        time = diff.inDays.toString() + ' DAYS AGO';
      }
    } else {
      if (diff.inDays == 7) {
        time = (diff.inDays / 7).floor().toString() + ' WEEK AGO';
      } else {
        time = (diff.inDays / 7).floor().toString() + ' WEEKS AGO';
      }
    }

    isyak = time;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushReplacementNamed(context, widget.route);
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: menu.MenuTitle(title: tempat),
        ),
        drawer: menu.Durawa(),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, index) {
            return new Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    EasyCard(
                      title: 'Hijri Date:  $formattedHijriDate',
                      titleColor: Colors.red,
                      backgroundColor: Colors.white,
                      suffixBadge: Colors.blueGrey,
                    ),
                    EasyCard(
                      title: 'Gregorian Date:  $formattedGregorianDate',
                      titleColor: Colors.red,
                      backgroundColor: Colors.white,
                      suffixBadge: Colors.blueGrey,
                    ),
                    EasyCard(
                      title: 'Subuh:  $subuh',
                      titleColor: Colors.red,
                      backgroundColor: Colors.black12,
                      suffixBadge: Colors.blueGrey,
                    ),
                    EasyCard(
                      title: 'Syuruk:  $syuruk',
                      titleColor: Colors.red,
                      backgroundColor: Colors.black12,
                      suffixBadge: Colors.blueGrey,
                    ),
                    EasyCard(
                      title: 'Zohor:  $zohor',
                      titleColor: Colors.red,
                      backgroundColor: Colors.black12,
                      suffixBadge: Colors.blueGrey,
                    ),
                    EasyCard(
                      title: 'Asar:  $asar',
                      titleColor: Colors.red,
                      backgroundColor: Colors.black12,
                      suffixBadge: Colors.blueGrey,
                    ),
                    EasyCard(
                      title: 'Maghrib:  $maghrib',
                      titleColor: Colors.red,
                      backgroundColor: Colors.black12,
                      suffixBadge: Colors.blueGrey,
                    ),
                    EasyCard(
                      titleColor: Colors.red,
                      backgroundColor: Colors.black12,
                      suffixBadge: Colors.blueGrey,
                      title: 'Isyak:  $isyak',
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
