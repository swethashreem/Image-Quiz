// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Imgview extends StatelessWidget {
  const Imgview({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          height: 120.0,
          width: 120.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/img1.jpg'),
                fit: BoxFit.fill, ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 2.0,
                  spreadRadius: 2.0,  ),] ), ),
        Container(
          margin: EdgeInsets.all(3.0),
          height: 120.0,
          width: 120.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/img2.jpg'),
                fit: BoxFit.fill, ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 2.0,
                  spreadRadius: 2.0, ),] ), ),
        Container(
          margin: EdgeInsets.all(3.0),
          height: 120.0,
          width: 120.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/img3.jpg'),
                fit: BoxFit.fill ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 2.0,
                  spreadRadius: 2.0, ),] ), ),
                   ],);
  }
}
