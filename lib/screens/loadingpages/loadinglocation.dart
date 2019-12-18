import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:waktusolatimprovised/screens/negeri/waktusolatpapar.dart';
import 'dart:convert';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:waktusolatimprovised/screens/negeri/waktusolatpaparlocation.dart';

class LoadingLocationPage extends StatefulWidget {
  final String altitude;
  final String longitude;
  final String nextroute;

  const LoadingLocationPage({this.nextroute, this.altitude, this.longitude});
  @override
  _LoadingLocationPageState createState() =>
      _LoadingLocationPageState();
}

class _LoadingLocationPageState extends State<LoadingLocationPage> {
  Position _currentPosition;

  @override
  void initState() {
    super.initState();

    checker();
  }

  checker() async {
    bool result = await DataConnectionChecker().hasConnection;
    if (result == true) {
      getSData();
    } else {
      Fluttertoast.showToast(msg: " You dont have an internet connection!");
      Navigator.pushReplacementNamed(context, '/');
    }
  }

  Map<String, dynamic> data;

  Future<String> getSData() async {
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
     var url;
    url = "https://mpt.i906.my/api/prayer/${_currentPosition.latitude},${_currentPosition.longitude}";
    var waktusolatempat = await http.get(Uri.encodeFull(url));

    setState(() {


      var waktusolat = json.decode(waktusolatempat.body);
      Navigator.push(
          context,
          SlideRightRoute(
              page: WaktuDisplayLocation(
            waktusolat: waktusolat,
            route: '/',
          )));
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: SpinKitDoubleBounce(
            color: Colors.blue,
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
