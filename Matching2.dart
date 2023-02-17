// ignore_for_file: prefer_const_constructors, duplicate_ignore, sort_child_properties_last

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Matching2 extends StatefulWidget {
  const Matching2({super.key});

  @override
  State<Matching2> createState() => _Matching2State();
}

class _Matching2State extends State<Matching2> {
  @override
  Widget build(BuildContext context) {
    var _color;

    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                      'images/img1.jpg',
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
                        'images/img1.jpg',
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
                // ignore: prefer_const_constructors
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
                    debugPrint('hi $data');
                    setState(() {
                      showSnackBarGlobal(context, 'Dropped successfully!');
                      var _isDropped = true;
                    });
                  },
                  onWillAccept: (data) {
                    return data == _color;
                  },
                  onLeave: (data) {
                    showSnackBarGlobal(context, 'Missed');
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
