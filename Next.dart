// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_loadertask/Matching.dart';
import 'package:flutter_loadertask/Matching2.dart';
import 'package:flutter_loadertask/Matching3.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MATCHING'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            height: 170,
            width: double.infinity,
            child: Matching(),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            height: 170,
            width: double.infinity,
            child: Matching2(),
          ),
          Container(
            height: 170,
            width: double.infinity,
            child: Matching3(),
          ),
        ],
      ),
    );
  }
}
