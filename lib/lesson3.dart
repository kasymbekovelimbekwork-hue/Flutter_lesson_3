import 'package:flutter_processing2/flutter_processing2.dart';

class MySketch extends Sketch {
  num circleX = 320;


  @override
  setup() async {
    size(640, 360);
  }

  @override
  draw() async {
    background(0);
    noStroke();
    fill(255);
    circle(circleX, 180, 50);
    circleX = circleX + 5 ;
  }

  @override
  void mousePressed() {
    circleX = 0;
  }
}
