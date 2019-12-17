import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';
import 'package:waktusolatimprovised/screens/negeri/waktusolatpapar.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:data_connection_checker/data_connection_checker.dart';

class LoadingKelantanSikitSikit extends StatefulWidget {
  final String tempatDipilih;

  const LoadingKelantanSikitSikit({this.tempatDipilih});
  @override
  _LoadingKelantanSikitSikitState createState() => _LoadingKelantanSikitSikitState();
}

class _LoadingKelantanSikitSikitState extends State<LoadingKelantanSikitSikit> {
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
      Navigator.pushNamed(context, '/kelantanPilihan');
    }
  }

  Map<String, dynamic> data;

  Future<String> getSData() async {
    var url;

    if (widget.tempatDipilih == kodkelantan[0]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[0]}&filter=1";
    }

    else if (widget.tempatDipilih == kodkelantan[1]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[1]}&filter=1";
    }
    else if (widget.tempatDipilih == kodkelantan[2]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[2]}&filter=1";
    }

    else if (widget.tempatDipilih == kodkelantan[3]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[3]}&filter=1";
    }

    else if (widget.tempatDipilih == kodkelantan[4]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[4]}&filter=1";
    }

    else if (widget.tempatDipilih == kodkelantan[5]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[5]}&filter=1";
    }

    else if (widget.tempatDipilih == kodkelantan[6]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[6]}&filter=1";
    }

   else if (widget.tempatDipilih == kodkelantan[7]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[7]}&filter=1";
    }

    else if (widget.tempatDipilih == kodkelantan[8]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[8]}&filter=1";
    }

   else if (widget.tempatDipilih == kodkelantan[9]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[9]}&filter=1";
    }

   else if (widget.tempatDipilih == kodkelantan[10]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[10]}&filter=1";
    }
    else if (widget.tempatDipilih == kodkelantan[11]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkelantan[11]}&filter=1";
    }

    var waktusolatempat = await http.get(Uri.encodeFull(url));

    setState(() {
      var waktusolat = json.decode(waktusolatempat.body);
      Navigator.push(
          context,
          SlideRightRoute(
              page: WaktuDisplay(waktusolat: waktusolat,route: '/KelantanPilihan',)));
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


