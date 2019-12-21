import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/components/prayer_time.dart';
import 'package:geolocator/geolocator.dart';
import 'package:waktusolatimprovised/components/easyBadgeCard.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PrayerTimeList extends StatefulWidget {
  @override
  _PrayerTimeListState createState() => _PrayerTimeListState();
}

class _PrayerTimeListState extends State<PrayerTimeList> {
  Position _currentPosition;

  List<String> _prayerTimes = [];
  List<String> _prayerNames = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    checkergps();
  }

  checkergps() async {
    bool geolocationStatus = await Geolocator().isLocationServiceEnabled();
    if (geolocationStatus == true) {
      getPrayerTimes();
    } else {
      Fluttertoast.showToast(
          msg:
              "Turn on your GPS or give permission for app to access your location!");
      Navigator.pushReplacementNamed(context, '/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Waktu Solat (Offline)"),
        ),
        body: _prayerTimes.isEmpty ? circularIndicator() : prayerListWidget());
  }

  Widget circularIndicator() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget prayerListWidget() {
    return ListView.builder(
      itemCount: _prayerTimes.length,
      itemBuilder: (context, position) {
        return Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                EasyCard(
                  title: '${_prayerNames[position]}: ${_prayerTimes[position]}',
                  titleColor: Colors.red,
                  backgroundColor: Colors.black12,
                  suffixBadge: Colors.blueGrey,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //build prayer time
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

    PrayerTime prayers = new PrayerTime();

    prayers.setTimeFormat(prayers.getTime12());
    prayers.setCalcMethod(prayers.getEgypt());
    prayers.setAsrJuristic(prayers.getShafii());
    prayers.setAdjustHighLats(prayers.getAdjustHighLats());

    List<int> offsets = [
      0,
      0,
      0,
      0,
      0,
      0,
      0
    ]; // {Fajr,Sunrise,Dhuhr,Asr,Sunset,Maghrib,Isha}
    prayers.tune(offsets);

    var currentTime = DateTime.now();

    setState(() {
      _prayerTimes = prayers.getPrayerTimes(currentTime,
          _currentPosition.latitude, _currentPosition.longitude, timeZone);
      _prayerNames = prayers.getTimeNames();
    });
  }
}
