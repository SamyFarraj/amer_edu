import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PainterBottomBending extends CustomPainter {
  Color colorBending;
  PainterBottomBending(this. colorBending);


  @override
  void paint(Canvas canvas, Size size) {
    var blueColor=Color(0xFF2860A6);
    var blueTextColor=Color(0xFF2D477A);
    Paint paint = new Paint()
      ..color = colorBending
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, -80); // Start
    path.quadraticBezierTo(size.width/2,size.height/2.2, size.width,-80);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
class PainterTopBending extends CustomPainter {
  Color colorBending;
  PainterTopBending(this. colorBending);


  @override
  void paint(Canvas canvas, Size size) {
    var blueColor=Color(0xFF2860A6);
    var blueTextColor=Color(0xFF2D477A);
    Paint paint = new Paint()
      ..color = colorBending
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(-80, 150); // Start
    path.quadraticBezierTo(size.width/2,size.height/12, size.width,150);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class PainterBottomBendingExtra extends CustomPainter {
  Color colorBending;
  PainterBottomBendingExtra(this. colorBending);


  @override
  void paint(Canvas canvas, Size size) {
    var blueColor=Color(0xFF2860A6);
    var blueTextColor=Color(0xFF2D477A);
    Paint paint = new Paint()
      ..color = colorBending
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 50); // Start
    path.quadraticBezierTo(size.width/2,size.height/1.5, size.width,50);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}