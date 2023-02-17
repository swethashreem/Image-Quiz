import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_loadertask/Imgview.dart';
import 'package:flutter_loadertask/Matching.dart';
import 'package:flutter_loadertask/Matching2.dart';
import 'package:flutter_loadertask/Matching3.dart';
import 'package:flutter_loadertask/next.dart';
// import 'next.dart';

class Img extends StatefulWidget {
  const Img({super.key});
  @override
  State<Img> createState() => _ImgState();
}

class _ImgState extends State<Img> {
  double rate = 0;
  @override
  void initState() {
    super.initState();
    // ignore: unused_local_variable
    final timer = Timer(const Duration(seconds: 5), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Next()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMAGE QUIZ'),
      ),
      body: Center(
        child: Wrap(
          children: [
            Imgview(),
            Slider(
              value: rate,
              onChanged: (newRate) {
                setState(() {
                  rate = newRate;
                });
              },
              min: 0,
              max: 10,
              divisions: 4,
              label: "$rate",
            ),
          ],
        ),
      ),
    );
  }
}
