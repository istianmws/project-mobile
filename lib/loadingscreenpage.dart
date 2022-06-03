import 'dart:async';

import 'package:flutter/material.dart';

import 'loginpage.dart';

class LoadingScreenPage extends StatefulWidget {
  const LoadingScreenPage({Key? key}) : super(key: key);

  @override
  State<LoadingScreenPage> createState() => _LoadingScreenPageState();
}

class _LoadingScreenPageState extends State<LoadingScreenPage> {
  @override
  void initState() {
    super.initState();
    startLoadingScreen();
  }

  startLoadingScreen() async {
    var durasi = const Duration(seconds: 5);
    return Timer(durasi, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return Login();
      }));
    });
  }




  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('. ..Database SD Jakarta.. .',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff)
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.white, Colors.blue],
          ),
        ),
      ),
    );
  }
}