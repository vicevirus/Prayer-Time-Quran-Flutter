import 'package:flutter/material.dart';
import 'package:time_formatter/time_formatter.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';
import 'package:waktusolatimprovised/menu.dart' as menu;
import 'package:intl/intl.dart';
import 'package:waktusolatimprovised/components/easyBadgeCard.dart';
import 'package:waktusolatimprovised/screens/pilihan/pilihan.dart';
import 'package:waktusolatimprovised/waktusolatpage.dart';

class WaktuDisplay extends StatefulWidget {
  final waktusolat;
  final route;
  final backNegeriDipilih;
  final backNegeriRoute;
  WaktuDisplay(
      {this.waktusolat,
      this.route,
      this.backNegeriDipilih,
      this.backNegeriRoute});
  @override
  _WaktuDisplayState createState() => _WaktuDisplayState();
}

class _WaktuDisplayState extends State<WaktuDisplay> {
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
      tempat = widget.waktusolat['response']['place'];

      subuhTime();
      syurukTime();
      zohorTime();
      asarTime();
      maghribTime();
      isyakTime();
    });
  }

  void subuhTime() {
    var now = new DateTime.now();
    var format = new DateFormat('h:mma');
    var date = new DateTime.fromMillisecondsSinceEpoch(
        widget.waktusolat['response']['times'][0] * 1000);
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
        widget.waktusolat['response']['times'][1] * 1000);
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
        widget.waktusolat['response']['times'][2] * 1000);
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
        widget.waktusolat['response']['times'][3] * 1000);
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
        widget.waktusolat['response']['times'][4] * 1000);
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
        widget.waktusolat['response']['times'][5] * 1000);
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
        Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
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
