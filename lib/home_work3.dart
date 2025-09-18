import 'package:flutter_processing2/flutter_processing2.dart';

class MySketch extends Sketch {
  @override
  setup() async {
    size(640, 360);
  }

  @override
  draw() async {
    

    num centerX = width/2;
    num centerY = height/2;
    num leftEyeX = centerX - 40;
    num rightEyeX = centerX + 40;
    num eyeY = centerY - 30;
    num retinaX = mouseX / width * 30;
    num retinaY = mouseY / height * 30;

    fill(150, 150, 255);
    circle(centerX, centerY, 200);
    
    fill(255);
    circle(leftEyeX, centerY - 30, 50);
    circle(rightEyeX, centerY - 30, 50);

    fill(0);
    circle(rightEyeX - 15 + retinaX, eyeY - 15 + retinaY, 20);
    circle(leftEyeX - 15 + retinaX, eyeY - 15 + retinaY, 20);

    fill(255);
    rectMode(CENTER);
    rect(centerX, centerY + 50, 100, 30);
  }
}
