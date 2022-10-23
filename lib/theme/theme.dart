import 'package:flutter/material.dart';


enum AppTheme{
  GreenLight,
  GreenDark,
}


var mainBlack=const Color(0xFF403A3E);
var mainRed=const Color(0XFFBE5869);


//DarkTheme
var blackColor=Color(0xFF313642);
var greenColor=Color(0xFFB1D199);
var redColor=Color(0xFFFF735E);
var secondBlackColor=Color(0xFF3E4553);


//Light Theme

var secondWhiteColor=Color(0XFFFAFAFA);
var yellowColor=Color(0xFFE3AA15);
//var redColor=Color(0xFFFF735E);
var whiteColor=Color(0XFFEEEEEE);

//main theme
var blueColor=Color(0xFF2860A6);
var blueTextColor=Color(0xFF2D477A);
var whiteTextColor=Color(0XFFFFFFFF);
var whiteColorBackGround=Color(0XFFFFFFFF);
var secondWhiteColorBackGround=Color(0XFFEAE8ED);


final Map<AppTheme,ThemeData>appThemeData={
  AppTheme.GreenLight:ThemeData(
    scaffoldBackgroundColor: blueColor,
    textSelectionColor: whiteTextColor,
    hintColor: Colors.grey,
    buttonColor: blueColor,
    highlightColor: secondWhiteColorBackGround,
    textSelectionHandleColor: blueTextColor,
    cardColor:blueColor ,
    backgroundColor: whiteColorBackGround,
    colorScheme:  ColorScheme.fromSwatch().copyWith(
      primary:whiteColorBackGround,

    ),
    appBarTheme: AppBarTheme(
      // backgroundColor: mainBlack,
      color: blueColor,
      elevation: 0,
      centerTitle: true,

    ),

  ),
  AppTheme.GreenDark:ThemeData(
    bottomAppBarColor:blueColor ,
    splashColor: blackColor,

    dataTableTheme:DataTableThemeData(
        decoration:BoxDecoration(
      color:blueColor
    )) ,
    scaffoldBackgroundColor: blueColor,
    textSelectionColor: whiteTextColor,
    hintColor: Colors.grey,
    buttonColor: blueColor,
    highlightColor: Colors.white10,
    textSelectionHandleColor: blueTextColor,
    cardColor:blueColor ,
    backgroundColor: whiteColorBackGround,
    colorScheme:  ColorScheme.fromSwatch().copyWith(
      primary:whiteColorBackGround,
    ),
    errorColor: Colors.red,
    appBarTheme: AppBarTheme(
      // backgroundColor: mainBlack,
      color: blueColor,

      elevation: 0,
      centerTitle: true,

    ),

  )

  /*
  ThemeData(
    scaffoldBackgroundColor: blackColor,
    textSelectionColor: Colors.white,
    hintColor: Colors.grey,
    buttonColor: redColor,
    highlightColor: greenColor,
    textSelectionHandleColor: redColor,
    cardColor:secondBlackColor ,
    backgroundColor: blackColor,
    colorScheme:  ColorScheme.fromSwatch().copyWith(
      primary:blackColor,

    ),
    appBarTheme: AppBarTheme(
      // backgroundColor: mainBlack,
      color: blackColor,
      elevation: 0,
      centerTitle: true,

    ),

  ),

   */
  /*
  AppTheme.GreenDark:ThemeData(
    scaffoldBackgroundColor: whiteColor,
    textSelectionColor: Colors.black,
    hintColor: Colors.grey,
    buttonColor: yellowColor,
    highlightColor: yellowColor,
    textSelectionHandleColor: redColor,
    cardColor:secondWhiteColor ,
    backgroundColor: whiteColor,
    colorScheme:  ColorScheme.fromSwatch().copyWith(
      primary:whiteColor,

    ),
    appBarTheme: AppBarTheme(
      // backgroundColor: mainBlack,
      color: whiteColor,
      elevation: 0,
      centerTitle: true,

    ),

  ),

   */

  /*
  AppTheme.GreenDark: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary:mainRed,

      ),
      appBarTheme: AppBarTheme(
        // backgroundColor: mainBlack,
          color: mainBlack
      ),
      //بيزبط للخلفية والاشياء الخفيفة
      primaryColor: Color(0XFFEEEEEE) ,
      //لون للبار او لون للكتابة بالاسود
      backgroundColor:  Color(0XFFEEEEEE),
      bottomAppBarColor:mainRed,
      textSelectionColor: Colors.black,
      accentColor: mainBlack,
      cardColor: Color(0XFFFAFAFA),
      cursorColor: Colors.grey
  ),

   */

};

