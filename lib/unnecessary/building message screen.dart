import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../constant/color_app.dart';
import '../../constant/component vesrion2.dart';
import '../../constant/component.dart';
import '../../logic/Cubit Authentication Operations/authentication_operations_cubit.dart';
import '../../unnecessary/Template Blank Page.dart';

class MainChatScreen extends StatelessWidget {
  MainChatScreen({Key? key}) : super(key: key);
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context);
    int currentIndexColorCard = 0;
    int currentIndexColorBackGroundCard = 0;
    var colorCard = [
      Colors.white10,
      color.cardColor,
      color.backgroundColor,
    ];
    var colorBackGroundCard = [
      color.cardColor,
      color.backgroundColor,
      Colors.white10
    ];
    double w = MediaQuery.of(context).size.width;
    var cubit = AuthenticationOperationsCubit.get(context);
    var size = MediaQuery.of(context).size;
    var searchCont = TextEditingController();
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: color.backgroundColor,
      appBar: AppBar(
        title:
        mainText("title", color.backgroundColor),
        toolbarHeight: h * 0.075,
        leadingWidth: double.infinity,
        /*
        title: Padding(
          padding: const EdgeInsets.all(4),
          child: mainText("Services", Theme.of(context).textSelectionColor),
        ),

         */
      ),
      body:Center(
        child: Container(
          margin: EdgeInsets.all(15),
          height: double.infinity,
          color: Colors.white
          ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              mainText('Sorry, this section is currently under development.', color.textSelectionHandleColor),
              SizedBox(height: h*0.12,),
              Image.asset('lib/assets/Image/in progress2.png')
            ],
          ),
        ),
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  Color currentColor;

  BNBCustomPainter(this.currentColor);

  @override
  void paint(Canvas canvas, Size size) {
    var blueColor = Color(0xFF2860A6);
    var blueTextColor = currentColor;
    Paint paint = new Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(-size.width, size.height);

    //  path.lineTo(size.width,-size.height);
    // path.lineTo(size.w,size.height);

    // path.lineTo(size.width, -250);
    // path.lineTo(size.width, size.height*4);
    // path.quadraticBezierTo(0,size.height*1.26, 1,size.height*-0.03);
    //  path.moveTo(0, 0); // Start
    //path.lineTo(100, 100);
    path.quadraticBezierTo(-150, 250, size.width / 10, -70);
    // cubic-bezier(0,1.26,1,-0.03)
    path.lineTo(size.width, size.height);
    canvas.drawShadow(path, Colors.black, 2, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(-150, 250, size.width / 10, -70);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

