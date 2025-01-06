import 'package:flutter/material.dart';

enum VoterCircle {
  circle1(color: Colors.blue),
  circle2(color: Colors.green),
  circle3(color: Colors.orange),
  circle4(color: Colors.purple),
  circle5(color: Colors.teal),
  circle6(color: Colors.pink),
  circle7(color: Colors.indigo),
  circle8(color: Colors.amber),
  circle9(color: Colors.cyan),
  circle10(color: Colors.deepOrange),
  circle11(color: Colors.lightBlue),
  circle12(color: Colors.lime),
  circle13(color: Colors.deepPurple);

  final Color color;
  const VoterCircle({required this.color});

  static Color getColorForCircle(String circleNumber) {
    return VoterCircle.values[int.parse(circleNumber) - 1].color;
  }

  static VoterCircle fromNumber(String number) {
    return VoterCircle.values[int.parse(number) - 1];
  }
}
