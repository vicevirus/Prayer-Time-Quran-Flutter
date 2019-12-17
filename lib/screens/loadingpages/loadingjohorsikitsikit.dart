import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';
import 'package:waktusolatimprovised/screens/negeri/waktusolatpapar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:data_connection_checker/data_connection_checker.dart';

class LoadingJohorSikitSikit extends StatefulWidget {
  final String tempatDipilih;

  const LoadingJohorSikitSikit({this.tempatDipilih});
  @override
  _LoadingJohorSikitSikitState createState() => _LoadingJohorSikitSikitState();
}

class _LoadingJohorSikitSikitState extends State<LoadingJohorSikitSikit> {
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
      Fluttertoast.showToast(msg: " You dont have internet connection");
      Navigator.pushNamed(context, '/JohorPilihan');
    }
  }

  Map<String, dynamic> data;

  Future<String> getSData() async {
    var url;

    if (widget.tempatDipilih == kodjohor[0]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[0]}&filter=1";
    }

    else if (widget.tempatDipilih == kodjohor[1]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[1]}&filter=1";
    }
    else if (widget.tempatDipilih == kodjohor[2]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[2]}&filter=1";
    }

    else if (widget.tempatDipilih == kodjohor[3]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[3]}&filter=1";
    }

    else if (widget.tempatDipilih == kodjohor[4]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[4]}&filter=1";
    }

    else if (widget.tempatDipilih == kodjohor[5]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[5]}&filter=1";
    }

    else if (widget.tempatDipilih == kodjohor[6]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[6]}&filter=1";
    }

   else if (widget.tempatDipilih == kodjohor[7]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[7]}&filter=1";
    }

    else if (widget.tempatDipilih == kodjohor[8]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[8]}&filter=1";
    }

   else if (widget.tempatDipilih == kodjohor[9]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[9]}&filter=1";
    }

   else if (widget.tempatDipilih == kodjohor[10]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodjohor[10]}&filter=1";
    }

    var waktusolatempat = await http.get(Uri.encodeFull(url));

    setState(() {
      var waktusolat = json.decode(waktusolatempat.body);
      Navigator.push(
          context,
          SlideRightRoute(
              page: WaktuDisplay(waktusolat: waktusolat,route: '/JohorPilihan',)));
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


