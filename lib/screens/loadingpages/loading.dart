import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:waktusolatimprovised/screens/negeri/waktusolatpapar.dart';
import 'dart:convert';
import 'package:data_connection_checker/data_connection_checker.dart';

class LoadingPage extends StatefulWidget {
  final String backNegeriDipilih;
  final String backNegeriRoute;
  final String tempatDipilih;
  final String nextroute;

  const LoadingPage({this.tempatDipilih, this.nextroute, this.backNegeriDipilih, this.backNegeriRoute});
  @override
  _LoadingPageState createState() =>
      _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    super.initState();
    getSData();


  }

  

  Map<String, dynamic> data;

  Future<String> getSData() async {
     var url;
    url = "https://mpt.i906.my/mpt.json?code=${widget.tempatDipilih}&filter=1";
    var waktusolatempat = await http.get(Uri.encodeFull(url));

    setState(() {
      var waktusolat = json.decode(waktusolatempat.body);
      Navigator.push(
          context,
          SlideRightRoute(
              page: WaktuDisplay(
            waktusolat: waktusolat,
            route: '${widget.nextroute}',
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
