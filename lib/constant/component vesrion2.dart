



import 'package:auto_size_text/auto_size_text.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Animation/CustomPageRoute.dart';
import 'color_app.dart';
import 'component.dart';




Widget buttonWithUnderLineWithIcon(Color colorIcons,Color colorTitleText,Color colorUnderLine
    ,String titleText,IconData icon,BuildContext context
    )
{
  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;

  return Row(
    children: [
      Icon(icon,color: colorIcons,size: 50,),
      SizedBox(width: w*0.0030,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.width*0.03,),

          subtext("${titleText}", colorTitleText),
          SizedBox(height: MediaQuery.of(context).size.width*0.035,),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).hintColor,width:MediaQuery.of(context).size.width * 0.001)
            ),
          ),
        ],
      ),


    ],
  );
}
Widget buttonWithUnderLine(Color colorTitleText,Color colorUnderLine
    ,String titleText,BuildContext context
    )
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: MediaQuery.of(context).size.width*0.03,),
      subtext("${titleText}", colorTitleText),
      SizedBox(height: MediaQuery.of(context).size.width*0.035,),
      Container(
        width: MediaQuery.of(context).size.width * 0.99,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).hintColor,width:MediaQuery.of(context).size.width * 0.001)
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.width*0.035,),

    ],
  );
}



Widget textFromFieldCustom(String titleField,String hintText,Color titleTextColor,TextEditingController thisController,
    TextInputType keyboardType,BuildContext context,
    Color colorContain

    )
{

  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
var color=Theme.of(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      subtext(titleField, titleTextColor),
      SizedBox(height:h*0.0010,),
      Container(
        color: color.backgroundColor
        ,
        child: TextFormField(

          cursorColor:color.textSelectionHandleColor,

          controller: thisController,
          keyboardType:keyboardType ,

          style: GoogleFonts.lato(color: color.textSelectionHandleColor, fontSize: 16) ,
          decoration: InputDecoration(

              focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: titleTextColor),
                  borderRadius: BorderRadius.circular(10)),
            enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: titleTextColor),
                borderRadius: BorderRadius.circular(10)),
            disabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: titleTextColor),
                borderRadius: BorderRadius.circular(10)),
            errorBorder:  OutlineInputBorder(
                borderSide: BorderSide(color:titleTextColor),
                borderRadius: BorderRadius.circular(10)),
            hintText:hintText,

          ),
        ),
      )

    ],
  );
}

Widget titleAndExplanation(String titleText,String explanationText,Color titleTextColor,Color explanationTextColor)
{
  return      Row(
    children: [
      subtext(
          "${titleText} : ", titleTextColor),
      subFromSubtext(
          "${explanationText}",
          explanationTextColor)
    ],
  );
}



Widget textWithIcon(Color colorIcons,Color colorTitleText
    ,String titleText,IconData icon,BuildContext context
    )
{
  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;

  return Row(

    children: [
      Icon(icon,color: colorIcons,size: 25,),
      SizedBox(width: w*0.0030,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.width*0.03,),

          subtext("${titleText}", colorTitleText),
          SizedBox(height: MediaQuery.of(context).size.width*0.035,),

        ],
      ),


    ],
  );
}

Widget customButton(String titleButton,Color colorTitleButton,Color colorButton)

{
  return Container(

    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: colorButton,
      borderRadius: BorderRadius.circular(10),

    ),
    child:
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: subtext(titleButton, colorTitleButton),
    ),
  );
}
Widget customButtonMediumLongWidth(BuildContext context,String titleButton,Color colorTitleButton,Color colorButton)

{
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  var color = Theme.of(context);
  return Container(
height: h*0.06,
    width: w*0.3,

    decoration: BoxDecoration(
      color: colorButton,
      borderRadius: BorderRadius.circular(10),

    ),
    child:
    Center(child: subtext(titleButton, colorTitleButton)),
  );
}
Widget longCustomButton(String titleButton,Color colorTitleButton,Color colorButton,BuildContext context,)

{
  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
  return Container(
    width: double.infinity,
    height: h*0.07,

    decoration: BoxDecoration(
      color: colorButton,
      borderRadius: BorderRadius.circular(18),

    ),
    child:
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: subtext(titleButton, colorTitleButton)),
    ),
  );
}
Widget longCustomButtonForBeeCellUseRegister(String titleButton,Color colorTitleButton,Color colorButton,BuildContext context,)

{
  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
  return Container(
    width: w/1.5,
    height: h*0.06,

    decoration: BoxDecoration(
      color: colorButton,
      borderRadius: BorderRadius.circular(18),

    ),
    child:
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: subtext(titleButton, colorTitleButton)),
    ),
  );
}

Widget iconTextIconsWithPushTo(IconData preIcon,IconData sufIcon,String textContain
    ,Color textColor,Color colorIcon,
    BuildContext context
    )
{
  var color=Theme.of(context);

  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
  return Column(
    children: [
      GestureDetector(

        child: Padding(
          padding: const EdgeInsets.only(right: 15.0,top: 25,bottom: 25),
          child: Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 8.0),
                child: Icon(preIcon,color:color.buttonColor,size: 35,),
              ),
              subtext(textContain, textColor),
              SizedBox(width: h*0.185,),
              Expanded(

                child: Align(

                  alignment: Alignment.bottomRight,

                  child:
                  Icon(Icons.chevron_right,color:colorIcon,size: 35,),

                ),

              )

            ],

          ),
        ),
        onTap: (){},
      ),
      Container(
        width: w*0.8,
        decoration: BoxDecoration(
            border: Border.all(color: color.hintColor,width: 0.15)
        ),
      ),
    ],

  );

}
Widget centerTextIconsWithPushTo(IconData preIcon,IconData sufIcon,String textContain
    ,Color textColor,Color colorIcon,
    BuildContext context
    )
{
  var color=Theme.of(context);

  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 25,bottom: 25),
        child: Row(
mainAxisAlignment: MainAxisAlignment.center,
          children: [

            mainText(textContain, textColor),


          ],

        ),
      ),
      Container(
        width: w*0.5,
        decoration: BoxDecoration(
            border: Border.all(color: color.hintColor,width: 0.2)
        ),
      ),
    ],

  );

}

Widget iconTextIconsWithSwitch(IconData preIcon,IconData sufIcon,String textContain
    ,Color textColor,Color colorIcon,
    BuildContext context
    )
{
  var color=Theme.of(context);

  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
  return Column(
    children: [
      GestureDetector(

        child: Padding(
          padding: const EdgeInsets.only(right: 15.0,top: 25,bottom: 25),
          child: Expanded(
            child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 8.0),
                  child: Icon(preIcon,color:color.buttonColor,size: 35,),
                ),
                subtext(textContain, textColor),
                Expanded(

                  child: Align(

                    alignment: Alignment.bottomRight,

                    child:FlutterSwitch(
                      activeColor: Colors.green,
                      width: w*0.15,
                      height: h*0.030,
                      valueFontSize: 16.0,
                      toggleSize: 20.0,
                      value: status,
                      borderRadius: 30.0,
                      padding: 8.0,
                      showOnOff: true,
                      onToggle: (val) {

                        status = val;

                      },
                    )
                   ,

                  ),

                )

              ],

            ),
          ),
        ),
        onTap: (){},
      ),
      Container(
        width: w*0.8,
        decoration: BoxDecoration(
            border: Border.all(color: color.hintColor,width: 0.15)
        ),
      ),
    ],

  );

}


Widget mainTextBold(String title, Color col) {
  return    Container(
    margin: EdgeInsets.all(4),
    child: AutoSizeText(
      title,
      style:GoogleFonts.lato(color: col, fontSize: 24,fontWeight:FontWeight.bold) ,
      maxLines: 2,
    ),
  );




  Text(

      title,
      style: GoogleFonts.play(color: col, fontSize: 35),
      maxLines: 2,
      softWrap:false
  );
}


const spinkit = SpinKitWave(

  color: Colors.blue,
  size: 30.0,

);


push(BuildContext context,Widget Page)
{
 // Navigator.of(context).push(CustomePageRoute(child:Page));
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Page),
  );

}

pushWithoutBack(BuildContext context,Widget Page)
{
  Navigator.of(context).pushReplacement (CustomePageRoute(child:Page));

}







bool status=false;


Future toastMessage (String message,BuildContext context)
{
  var color=Theme.of(context);

  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
  return    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor:color.cardColor ,
      textColor: color.textSelectionColor,
      fontSize: 16.0
  );
}

customDropDown (BuildContext context ,List<String> items,
    String hintDropDown,String titleDropDown,
    Function myFunction)
{  var color=Theme.of(context);

double w = MediaQuery.of(context).size.width;

double h=  MediaQuery.of(context).size.height;
  return
    Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          subtext("${titleDropDown} : ", color.hintColor),
          Container(
            width: w*0.6,
            height: h*0.060,
            decoration: BoxDecoration(
                color: color.backgroundColor,
                border: Border.all(color: Colors.white, width: 0),
                borderRadius: BorderRadius.circular(20)),
            child: DropdownButtonFormField<String>(

                dropdownColor:  color.backgroundColor,


                decoration: InputDecoration(

                  labelStyle: GoogleFonts.lato(color: color.textSelectionHandleColor, fontSize: 16),
                  focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color:  color.textSelectionHandleColor),
                      borderRadius: BorderRadius.circular(10)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:  color.textSelectionHandleColor),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: color.textSelectionHandleColor),
                      borderRadius: BorderRadius.circular(10)),
                ),
                icon: Icon(Icons.arrow_drop_down,color: color.textSelectionHandleColor,),
                iconSize: 30,
                hint: subFromSubtext(hintDropDown, color.textSelectionHandleColor),
                iconEnabledColor: Colors.black,
                iconDisabledColor: Colors.red,
                items:items.map((street) => DropdownMenuItem<String>(

                  value: street,
                  child: Text(
                    street,
                    style: GoogleFonts.lato(
                        color: color.textSelectionHandleColor, fontSize: 16),
                  ),
                ),
                )

                    .toList(),

                onChanged: (itemChanged) => myFunction(itemChanged)
              //cubit.selectLocation(street!)




            ),
          )

        ],
      ),
    );
}


Widget defaultformField({
  required String lable,
  required TextEditingController controller,
  FormFieldValidator<String>? validate,
  required TextInputType? type,
  bool isPassword = false,
  ValueChanged<String>? onSubmit,
  IconData? prefix,
  IconData? suffix,
  ValueChanged<String>? onChange,
  VoidCallback? suffixpressed,
  GestureTapCallback? onTap,
  bool? isClickable = true,
  required BuildContext context,
  required Color titleTextColor
 } )
{
  var color=Theme.of(context);

  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
  return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      subtext(lable, titleTextColor),
      SizedBox(height:h*0.0030,),

      Container(

  color: color.backgroundColor,
        child: TextFormField(
cursorColor: color.cardColor,
          cursorWidth: 1,
          controller: controller,
          enabled: isClickable,
          validator: validate,

          onFieldSubmitted: onSubmit,
          onChanged: onChange,
          obscureText: isPassword,
          keyboardType: type,

          decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            suffixIcon: suffix != null
                ? IconButton(icon: Icon(suffix), onPressed: suffixpressed)
                : null,
            suffixIconColor: color.textSelectionHandleColor,
            prefixIcon: Icon(prefix,color: color.cardColor,),
            fillColor: color.cardColor,
            border: OutlineInputBorder(),
            errorBorder:OutlineInputBorder(
borderRadius: BorderRadius.circular(10)
,borderSide:  BorderSide(color: color.textSelectionHandleColor, width: 1.3),
            ),
            focusedErrorBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),

              borderSide:  BorderSide(color: color.textSelectionHandleColor, width: 1.3),
            ),
            errorStyle: TextStyle(
              fontSize: 14,

                color: Colors.red.shade400
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),

              borderSide:  BorderSide(color: color.textSelectionHandleColor, width: 1.3),
            ),
            enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: titleTextColor),
                borderRadius: BorderRadius.circular(10)),
            disabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: titleTextColor),
                borderRadius: BorderRadius.circular(10)),
          ),
          onTap: onTap,
        ),
      ),
      SizedBox(height:h*0.00150,),

    ],
  );
}


Widget defaultFormFieldForBeeCell({
  required String hintText,
  required String lable,
  required TextEditingController controller,
  FormFieldValidator<String>? validate,
  required TextInputType? type,
  bool isPassword = false,
  ValueChanged<String>? onSubmit,
  IconData? prefix,
  IconData? suffix,
  ValueChanged<String>? onChange,
  VoidCallback? suffixpressed,
  GestureTapCallback? onTap,
  bool? isClickable = true,
  required BuildContext context,
  required Color titleTextColor
} )
{
  var color=Theme.of(context);

  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
  return   Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      SizedBox(height:h*0.0060,),

      Container(

width: w/1.2,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10)

        ),
        child: TextFormField(

          cursorColor: color.cardColor,
          cursorWidth: 1,
          controller: controller,
          enabled: isClickable,
          validator: validate,
          onFieldSubmitted: onSubmit,
          onChanged: onChange,
          obscureText: isPassword,
          keyboardType: type,

textAlign: TextAlign.center,

          decoration: InputDecoration(
hintStyle: TextStyle(
  fontSize: 18,
),
            contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            suffixIcon: suffix != null
                ? IconButton(icon: Icon(suffix), onPressed: suffixpressed)
                : null,
            suffixIconColor: color.textSelectionHandleColor,
            fillColor: color.cardColor,
            border: OutlineInputBorder(),
            errorBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)

              ,borderSide:  BorderSide(color: Colors.white10, width: 0),
            ),
            focusedErrorBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),

              borderSide:  BorderSide(color: color.textSelectionHandleColor, width: 0),
            ),
            errorStyle: TextStyle(
                fontSize: 14,

                color: Colors.red.shade400
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),

              borderSide:  BorderSide(color: color.textSelectionHandleColor, width: 0),
            ),
            hintText: hintText,

            enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color:  Colors.white10),
                borderRadius: BorderRadius.circular(10)),
            disabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color:  Colors.white10),
                borderRadius: BorderRadius.circular(10)),
          ),
          onTap: onTap,
        ),
      ),
      SizedBox(height:h*0.0060,),

    ],
  );
}


Widget titleCategory(BuildContext context)
{
  var color=Theme.of(context);

  double w = MediaQuery.of(context).size.width;

  double h=  MediaQuery.of(context).size.height;
  return
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Container(
           height: 125/1.2,width: 125/1.2,
            decoration: BoxDecoration(
               border: Border.all(color: color.cardColor,width: 1.3),
                shape: BoxShape.circle
            ),child: Center(child: subtext('Health', color.textSelectionHandleColor))),

        Icon(
          Icons.keyboard_double_arrow_down,
          color: color.textSelectionHandleColor,
        )

      ],);
}

customDropDownWithoutTitle (BuildContext context ,List<String> items,
    String hintDropDown,
    Function myFunction)
{  var color=Theme.of(context);

double w = MediaQuery.of(context).size.width;

double h=  MediaQuery.of(context).size.height;
return
  Container(

    child: Container(
      width: w*0.4,
      height: h*0.058,
      decoration: BoxDecoration(

          color: color.backgroundColor,
          border: Border.all(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButtonFormField<String>(

          dropdownColor:  color.backgroundColor,
          decoration: InputDecoration(

            labelStyle: GoogleFonts.lato(color: color.textSelectionHandleColor, fontSize: 16),
            focusedBorder:  OutlineInputBorder(
                borderSide: BorderSide(color:  color.backgroundColor),
                borderRadius: BorderRadius.circular(10)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color:  color.backgroundColor),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: color.backgroundColor),
                borderRadius: BorderRadius.circular(10)),

          ),
          icon: Icon(Icons.keyboard_double_arrow_down,color: color.textSelectionHandleColor),
iconSize: 25,

          hint:Text(
            hintDropDown,
            style: GoogleFonts.lato(
                color: color.textSelectionHandleColor, fontSize: 18),
          ),
          iconEnabledColor: Colors.black,
          iconDisabledColor: Colors.red,
          items:items.map((street) => DropdownMenuItem<String>(

            value: street,
            child: Text(
              street,
              style: GoogleFonts.lato(
                  color: color.textSelectionHandleColor, fontSize: 18),
            ),
          ),
          )

              .toList(),

          onChanged: (itemChanged) => myFunction(itemChanged)
        //cubit.selectLocation(street!)




      ),
    ),
  );
}

Widget towWidgetInRow (Widget one,Widget tow)
{

  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      one,tow
    ],
  );
}
/*
Container(
margin: EdgeInsets.only(top: 20.0),
height: 200.0,
child: ListView.builder(
padding: EdgeInsets.all(0.0),
scrollDirection: Axis.horizontal,
shrinkWrap: true,
itemCount: 3,
itemBuilder: (BuildContext context, int index) {
return
Image.asset('lib/assets/Image/orange.png',scale: 1.3,);
},

),
),

 */