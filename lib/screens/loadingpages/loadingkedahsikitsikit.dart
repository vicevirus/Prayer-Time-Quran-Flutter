import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:waktusolatimprovised/components/sliderightransition.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:waktusolatimprovised/screens/negeri/waktusolatpapar.dart';
import 'dart:convert';
import 'package:data_connection_checker/data_connection_checker.dart';

class LoadingKedahSikitSikit extends StatefulWidget {
  final String tempatDipilih;

  const LoadingKedahSikitSikit({this.tempatDipilih});
  @override
  _LoadingKedahSikitSikitState createState() => _LoadingKedahSikitSikitState();
}

class _LoadingKedahSikitSikitState extends State<LoadingKedahSikitSikit> {
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
      Navigator.pushNamed(context, '/JohorPilihan');
    }
  }

  Map<String, dynamic> data;

  Future<String> getSData() async {
    var url;

    if (widget.tempatDipilih == kodkedah[0]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[0]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[1]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[1]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[2]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[2]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[3]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[3]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[4]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[4]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[5]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[5]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[6]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[6]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[7]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[7]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[8]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[8]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[9]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[9]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[10]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[10]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[11]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[11]}&filter=1";
    } else if (widget.tempatDipilih == kodkedah[12]) {
      url = "https://mpt.i906.my/mpt.json?code=${kodkedah[12]}&filter=1";
    }

    var waktusolatempat = await http.get(Uri.encodeFull(url));

    setState(() {
      var waktusolat = json.decode(waktusolatempat.body);
      Navigator.push(
          context,
          SlideRightRoute(
              page: WaktuDisplay(
            waktusolat: waktusolat,
            route: '/KedahPilihan',
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
