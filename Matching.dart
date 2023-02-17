// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last, dead_code, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables, unused_import

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loadertask/Matching2.dart';

class Matching extends StatefulWidget {
  const Matching({super.key});

  @override
  State<Matching> createState() => _MatchingState();
}

class _MatchingState extends State<Matching> {
  // List<CardItem>itemList{
  //   itemList=[
  //     image
  //   ]
  // }
  @override
  Widget build(BuildContext context) {
    var _color;

    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Draggable(
                  // Data is the value this Draggable stores.
                  data: _color,
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.redAccent,
                    child: Image.asset(
                      'images/img2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  feedback: Material(
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                      ),
                      child: Image.asset(
                        'images/img2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  childWhenDragging: Container(
                    height: 120.0,
                    width: 120.0,
                    // color: Colors.grey,
                    // child: const Center(
                    //   child: Text(
                    //     '',
                    //     textScaleFactor: 2,
                    //   ),
                    // ),
                  ),
                  maxSimultaneousDrags: 1,
                ),
                Padding(padding: EdgeInsets.all(20.0)),
                SizedBox(
                  height: 10,
                ),
                DragTarget<String>(
                  builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                  ) {
                    bool _isDropped = false;
                    return DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(4),
                      padding: EdgeInsets.all(6),
                      color: Colors.black,
                      strokeWidth: 2,
                      dashPattern: [8],
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Container(
                          height: 120,
                          width: 120,
                          color: _isDropped ? Colors.redAccent : null,
                          child: Center(
                              child: Text(
                            !_isDropped ? 'Drop here' : 'Dropped',
                            // textScaleFactor: 2,
                          )),
                        ),
                      ),
                    );
                  },
                  onAccept: (data) {
                    var accepted = true;
                  },
                  onWillAccept: (data) {
                    return true;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

void showSnackBarGlobal(BuildContext context, String s) {}
