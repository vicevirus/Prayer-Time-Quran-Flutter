import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/components/prayer_time.dart';
import 'package:geolocator/geolocator.dart';






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

    getPrayerTimes();
  }


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Prayer Time List"),
      ),
      body: _prayerTimes.isEmpty ? circularIndicator() : prayerListWidget()
    );
  }


  


  Widget circularIndicator(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }


  Widget prayerListWidget(){
    return ListView.builder(
      itemCount: _prayerTimes.length,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "${_prayerNames[position]} : ${_prayerTimes[position]}",
            style: new TextStyle(fontSize: 20.0),
          ),
        );
      },
    );
  }


  //build prayer time
getPrayerTimes() async{


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

    List<int> offsets = [0, 0, 0, 0, 0, 0, 0]; // {Fajr,Sunrise,Dhuhr,Asr,Sunset,Maghrib,Isha}
    prayers.tune(offsets);

    var currentTime = DateTime.now();




    setState(() {
      _prayerTimes = prayers.getPrayerTimes(currentTime, _currentPosition.latitude,_currentPosition.longitude, timeZone);
      _prayerNames = prayers.getTimeNames();
      print(_currentPosition.longitude);
      print(_currentPosition.latitude);
    });
  }

}