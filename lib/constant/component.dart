import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




import 'dart:math';

import '../logic/Cubit Note Operations/note_operations_cubit.dart';
import 'color_app.dart';

const niceColors = [
  0XFFB2DFDB,
  0XFF1DE9B6,
  0XFFFFF,
  0XFFFFF,
];


Random r1 = new Random();

int getRandomNiceColor() {
  return niceColors[r1.nextInt(niceColors.length)];
}

void listenseronNoticication()
{

  //لازم ابعتو
  FirebaseMessaging.onMessage;
  /*
  FirebaseMessaging.onMessage.listen((event) {

    if(event.notification!=null)
      {
        final title=event.notification!.title;
        print('$title');
      }
  });


   */

}

Widget mainText(String title, Color col) {
  return    Container(
    margin: EdgeInsets.all(4),
    child: AutoSizeText(
      title,
      style:GoogleFonts.lato(color: col, fontSize: 25) ,
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



Widget subtext(String title, Color col) {
  return
    Container(
      
      margin: EdgeInsets.all(4),
      child: SizedBox(
        child: AutoSizeText(
          title,
          style:GoogleFonts.lato(color: col, fontSize: 18) ,
          maxLines: 15,
          overflow:TextOverflow.clip,
        ),
      ),
    );
    Text(
    title,
    style: GoogleFonts.play(color: col, fontSize: 30),
    maxLines: 2,
      softWrap:false
  );
}
Widget subFromSubtext(String title, Color col) {
  return
    SizedBox(
      width: 150,
      child: Container(
        margin: EdgeInsets.all(4),

        child: AutoSizeText(

          title,
          style:GoogleFonts.lato(color: col, fontSize: 16) ,
          maxLines: 1,
          softWrap: false,
          overflow:TextOverflow.ellipsis,

        ),
      ),
    );

    Text(
    title,
    style: GoogleFonts.play(color: col, fontSize: 25),
    maxLines: 1,
      softWrap:false
  );
}


Widget consttextfromfield(String nameTextField,TextInputType keybordType,TextEditingController thisControllar)
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      subFromSubtext("$nameTextField", Colors.black),
      SizedBox(height:10,),
      Container(
        width: 450,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: mainGreen, width: 1.5),
            borderRadius: BorderRadius.circular(8)
        )

        ,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: TextFormField(

            controller: thisControllar,
            keyboardType: keybordType,
            style: TextStyle(fontSize: 25),
            decoration: InputDecoration(
              labelStyle:
              GoogleFonts.play(color: Colors.black, fontSize: 30),
              //hintText:'Name Section',
            ),
          ),
        ),
      ),
      SizedBox(height: 15,),


    ],);
}
Widget  SecondeCoustomeTextField(String nameTextField ,String hintText,Color ColorBorder,TextInputType keybordType,TextEditingController thisControllar)
{
  return    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 15,),
      Container(
        width: 450,
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: TextFormField(
          onFieldSubmitted: (value) {},
          keyboardType: keybordType,
          style: GoogleFonts.play(color: ColorBorder, fontSize: 30),
          cursorColor: ColorBorder,
controller: thisControllar,
          decoration: InputDecoration(
              labelStyle:
              GoogleFonts.play(color:Colors.white, fontSize: 30),
              labelText: "$nameTextField",
              hintStyle:
              GoogleFonts.play(color: Colors.grey, fontSize: 20),
              hintText: "$hintText",
              iconColor: Colors.black,
              fillColor:ColorBorder,
              prefixIconColor: ColorBorder,
              focusColor: ColorBorder,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorBorder),
                  borderRadius: BorderRadius.circular(20)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorBorder),
                  borderRadius: BorderRadius.circular(20)) ,
              suffixIconColor:ColorBorder,
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: ColorBorder),
                  borderRadius: BorderRadius.circular(20)),
              border:
              OutlineInputBorder(
                  borderSide: BorderSide(color: ColorBorder),
                  borderRadius: BorderRadius.circular(20))),
        ),
      ),
      SizedBox(height: 15,)

    ],
  );
}

Widget  HalfSecondeCoustomeTextField(String nameTextField ,String hintText,Color ColorBorder,TextInputType keybordType,TextEditingController thisControllar)
{
  return    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 15,),
      Container(
        width: 200,
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: TextFormField(
          onFieldSubmitted: (value) {},
          keyboardType: keybordType,
          style: GoogleFonts.play(color: ColorBorder, fontSize: 25),
          cursorColor: ColorBorder,
          controller: thisControllar,
          decoration: InputDecoration(
              labelStyle:
              GoogleFonts.play(color:ColorBorder, fontSize: 25),
              labelText: "$nameTextField",
              hintStyle:
              GoogleFonts.play(color: Colors.grey, fontSize: 25),
              hintText: "$hintText",
              iconColor: Colors.black,
              fillColor:ColorBorder,
              prefixIconColor: ColorBorder,
              focusColor: ColorBorder,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorBorder),
                  borderRadius: BorderRadius.circular(20)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorBorder),
                  borderRadius: BorderRadius.circular(20)) ,
              suffixIconColor:ColorBorder,
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: ColorBorder),
                  borderRadius: BorderRadius.circular(20)),
              border:
              OutlineInputBorder(
                  borderSide: BorderSide(color: ColorBorder),
                  borderRadius: BorderRadius.circular(20))),
        ),
      ),
      SizedBox(height: 15,)

    ],
  );
}

Widget coustomDropDowunItem(BuildContext context,String nameDropItem
    ,List<String>itemsArray,String itemShowing,String hintText)
{
  //var cubit=EditSectionCubit.get(context);

  return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

   //   subFromSubtext("$nameDropItem", Colors.white),
      SizedBox(height: 20,),

/*
      Container(
        width: 450,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(20)),
        child: DropdownButtonFormField<String>(
            dropdownColor: Colors.white,
            decoration: InputDecoration(
              labelText:"$nameDropItem",
              labelStyle: GoogleFonts.play(color: Colors.white, fontSize: 40),
              focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
            ),
            icon: Icon(Icons.arrow_drop_down,color: Colors.white,),
            iconSize: 40,
            hint: subtext("$hintText", Colors.grey),
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.red,
            items: itemsArray
                .map((street) => DropdownMenuItem<String>(

              value: street,
              child: Text(
                street,
                style: GoogleFonts.play(
                    color: Colors.black, fontSize: 30),
              ),
            ),
            )

                .toList(),

            onChanged: (street) => //cubit.selectLocation(street!)




        ),
      ),

 */
      SizedBox(height: 15,),

    ],

  );
}


/*
Widget coustomDropDowunItemForTypeSections(BuildContext context,String nameDropItem
    ,List<DepartmentType>itemsArray,String itemShowing,String hintText)
{
  var cubit=EditSectionCubit.get(context);

  return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      //   subFromSubtext("$nameDropItem", Colors.white),
      SizedBox(height: 20,),


      Container(
        width: 450,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(20)),
        child: DropdownButtonFormField<String>(
            dropdownColor: Colors.white,
            decoration: InputDecoration(
              labelText:"$nameDropItem",
              labelStyle: GoogleFonts.play(color: Colors.white, fontSize: 40),
              focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
            ),
            icon: Icon(Icons.arrow_drop_down,color: Colors.white,),
            iconSize: 40,
            hint: subtext("$hintText", Colors.grey),
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.red,
            items: itemsArray.map((street) => DropdownMenuItem<String>(
              value: street.name,

              child: Text(
                street.name,
                style: GoogleFonts.play(
                    color: Colors.black, fontSize: 30),
              ),
            ),
            ).toList(),
            onChanged: (street) =>
                {
                cubit.selectdepartmentType(street!)}

        ),
      ),
      SizedBox(height: 15,),

    ],

  );
}

 */
/*
Widget coustomDropDowunItemForSections(BuildContext context,String nameDropItem
    ,List<Department>itemsArray,String itemShowing,String hintText)
{
  var cubit=EditSectionCubit.get(context);

  return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      //   subFromSubtext("$nameDropItem", Colors.white),
      SizedBox(height: 20,),


      Container(
        width: 450,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(20)),
        child: DropdownButtonFormField<String>(
            dropdownColor: Colors.white,
            decoration: InputDecoration(
              labelText:"$nameDropItem",
              labelStyle: GoogleFonts.play(color: Colors.white, fontSize: 40),
              focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
            ),
            icon: Icon(Icons.arrow_drop_down,color: Colors.white,),
            iconSize: 40,
            hint: subtext("$hintText", Colors.grey),
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.red,
            items: itemsArray.map((street) => DropdownMenuItem<String>(
              value: street.name,

              child: Text(
                street.name,
                style: GoogleFonts.play(
                    color: Colors.black, fontSize: 30),
              ),
            ),
            ).toList(),
            onChanged: (street) =>
            {
              cubit.selectdepartmentType(street!)}

        ),
      ),
      SizedBox(height: 15,),

    ],

  );
}


 */
/*
Widget coustomDropDowunItemForCategory(BuildContext context,String nameDropItem
    ,List<Category>itemsArray,String itemShowing,String hintText)
{
  var cubit=EditSectionCubit.get(context);

  return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      //   subFromSubtext("$nameDropItem", Colors.white),
      SizedBox(height: 20,),


      Container(
        width: 450,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(20)),
        child: DropdownButtonFormField<String>(
            dropdownColor: Colors.white,
            decoration: InputDecoration(
              labelText:"$nameDropItem",
              labelStyle: GoogleFonts.play(color: Colors.white, fontSize: 40),
              focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
            ),
            icon: Icon(Icons.arrow_drop_down,color: Colors.white,),
            iconSize: 40,
            hint: subtext("$hintText", Colors.grey),
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.red,
            items: itemsArray.map((street) => DropdownMenuItem<String>(
              value: street.name,

              child: Text(
                street.name,
                style: GoogleFonts.play(
                    color: Colors.black, fontSize: 30),
              ),
            ),
            ).toList(),
            onChanged: (street) =>
            {
              cubit.selectdepartmentType(street!)}

        ),
      ),
      SizedBox(height: 15,),

    ],

  );
}


 */




Widget coustomDropDowunItemForPriority(BuildContext context,String nameDropItem
    ,List<String>itemsArray,String hintText)
{
  var cubit=NoteOperationsCubit.get(context);

  return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      //   subFromSubtext("$nameDropItem", Colors.white),
      SizedBox(height: 20,),


      Container(
        width: 450,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(20)),
        child: DropdownButtonFormField<String>(

            dropdownColor: Colors.white,
            decoration: InputDecoration(
              labelText:"$nameDropItem",
              labelStyle: GoogleFonts.play(color:Colors.white, fontSize: 40),
              focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
            ),
            icon: Icon(Icons.arrow_drop_down,color: Colors.white,),
            iconSize: 40,
            hint: subtext("$hintText", Colors.grey),
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.red,
            items: itemsArray.map((street) => DropdownMenuItem<String>(
              value: street,

              child: Text(
                street,
                style: GoogleFonts.play(
                    color: Colors.black, fontSize: 30),
              ),
            ),
            ).toList(),
            onChanged: (street) =>
            {
              cubit.selectPriorityType(street!)}

        ),
      ),
      SizedBox(height: 15,),

    ],

  );
}

Widget coustomDropDowunItemForTypeMission(BuildContext context,String nameDropItem
    ,List<String>itemsArray,String hintText)
{
  var cubit=NoteOperationsCubit.get(context);

  return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      //   subFromSubtext("$nameDropItem", Colors.white),
      SizedBox(height: 20,),


      Container(
        width: 450,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(20)),
        child: DropdownButtonFormField<String>(

            dropdownColor: Colors.white,
            decoration: InputDecoration(
              labelText:"$nameDropItem",
              labelStyle: GoogleFonts.play(color:Colors.white, fontSize: 40),
              focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
            ),
            icon: Icon(Icons.arrow_drop_down,color: Colors.white,),
            iconSize: 40,
            hint: subtext("$hintText", Colors.grey),
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.red,
            items: itemsArray.map((street) => DropdownMenuItem<String>(
              value: street,

              child: Text(
                street,
                style: GoogleFonts.play(
                    color: Colors.black, fontSize: 30),
              ),
            ),
            ).toList(),
            onChanged: (street) =>
            {
              cubit.selectTypeMission(street!)}

        ),
      ),
      SizedBox(height: 15,),

    ],

  );
}


/*
ListView ListProudactForSell(List<StoredProduct> listproudacts,SellOperationCubit cubit) {

  // List<bool>  boxcheck=;

  var sum=0;

  return ListView.builder(
    shrinkWrap: true,
    physics: ScrollPhysics(),
    itemCount: listproudacts.length,
    itemBuilder: (context, position) {
      return Padding(
        padding:
        const EdgeInsets.only(left: 10, right: 10, top: 25, bottom: 15),
        child: Container(
          height: 275,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 12,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),

          // width: double.infinity,
          child:
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subtext('Name Proudact', Colors.black),
                            SizedBox(
                              height: 15,
                            ),
                            subtext('${listproudacts[position].product.name}',  Colors.green)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subFromSubtext('Quantity', Colors.black),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextFormField(
                                controller: cubit.quantity[position],
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subFromSubtext('Price', Colors.black),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:subFromSubtext("${listproudacts[position].supplyPrice}", Colors.grey)
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: subFromSubtext("${listproudacts[position].createdAt}", Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  Transform.scale(
                    scale: 2,
                    child: Checkbox(

                      value: cubit.boxcheck[position],
                      tristate: false,
                      onChanged: (bool? value) {
                            print('price lenthe 2 ${cubit.quantity[position].text}');
                        //print('price lenthe 3${price[3].text}');
                        cubit.boxcheck[position]=!cubit.boxcheck[position];
                        cubit.EditCheckBox(position, cubit.boxcheck[position]);

                        if(cubit.boxcheck[position]==true)
                        {
                          /*
                          SectionProductsSell.productss.add(ProductsList(importId: listproudacts[position].id.toString()
                            ,  quantity:cubit.quantity[position].text));

                           */
                        }
                        /*
                        else (SectionProductsSell.productss.removeAt(position));
                        print( "thhesr${SectionProducts.productss}"  );

                         */
                      },
                      focusColor: Colors.green,
                      activeColor: Colors.green,
                      splashRadius: 30,
                    ),
                  )


                ],
              )
          ),

        ),
      );
    },
  );
}

 */
/*
ListView EditListProudactForSell(List<Import> listproudacts,SellOperationCubit cubit) {

  // List<bool>  boxcheck=;


  var sum=0;

  return ListView.builder(
    shrinkWrap: true,
    physics: ScrollPhysics(),
    itemCount: listproudacts.length,
    itemBuilder: (context, position) {
      return Padding(
        padding:
        const EdgeInsets.only(left: 10, right: 10, top: 25, bottom: 15),
        child: Container(
          height: 275,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 12,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),

          // width: double.infinity,
          child:
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subtext('Name Proudact', Colors.black),
                            SizedBox(
                              height: 15,
                            ),
                            subtext('${listproudacts[position].productId}',  Colors.green)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subFromSubtext('Quantity', Colors.black),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextFormField(
                                controller: cubit.Editquantity[position],
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subFromSubtext('Price', Colors.black),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child:subFromSubtext("${listproudacts[position].supplyPrice}", Colors.grey)
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: subFromSubtext("${listproudacts[position].createdAt}", Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  Transform.scale(
                    scale: 2,
                    child: Checkbox(

                      value: cubit.Editboxcheck[position],
                      tristate: false,
                      onChanged: (bool? value) {
                        //    print('price lenthe 2 ${price[2].text}');
                        //print('price lenthe 3${price[3].text}');
                        cubit.Editboxcheck[position]=!cubit.Editboxcheck[position];
                        cubit.EditCheckBoxForEditOrder(position, cubit.Editboxcheck[position]);

                        if(cubit.Editboxcheck[position]==true)
                        {
                          /*
                          SectionProductsSell.productss.add(ProductsList(importId: listproudacts[position].id.toString()
                              ,  quantity:cubit.quantity[position].text));

                           */
                        }
                        /*
                        else (SectionProductsSell.productss.removeAt(position));
                        print( "thhesr${SectionProducts.productss}"  );

                         */
                      },
                      focusColor: Colors.green,
                      activeColor: Colors.green,
                      splashRadius: 30,
                    ),
                  )


                ],
              )
          ),

        ),
      );
    },
  );
}


 */
/*

ListView ListProudact(List<Showproduct> listproudacts,PageProudactCubit cubit) {

 // List<bool>  boxcheck=;

  var sum=0;
  List<bool> boxcheck = List.generate( listproudacts.length, (i) => false);
  /*
  List<TextEditingController> price = List.generate( listproudacts.length, (i) => TextEditingController());
  List<TextEditingController> quantity = List.generate( listproudacts.length, (i) => TextEditingController());
  List<TextEditingController> expdata = List.generate( listproudacts.length, (i) => TextEditingController());

   */
  return ListView.builder(
    shrinkWrap: true,
    physics: ScrollPhysics(),
    itemCount: listproudacts.length,
    itemBuilder: (context, position) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 25, bottom: 15),
        child: Container(
          height: 275,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 12,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),

          // width: double.infinity,
          child:
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subtext('Name Proudact', Colors.black),
                            SizedBox(
                              height: 15,
                            ),
                            subtext('${listproudacts[position].name}',  Colors.green)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subFromSubtext('Quantity', Colors.black),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextFormField(
                                controller: cubit.quantity[position],
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subFromSubtext('Price', Colors.black),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextFormField(
                                controller: cubit.price[position],
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextFormField(
                                controller: cubit.expdata[position],
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Transform.scale(
                    scale: 2,
                    child: Checkbox(

                      value: cubit.boxcheck[position],
                      tristate: false,
                      onChanged: (bool? value) {
                  //    print('price lenthe 2 ${price[2].text}');
                      //print('price lenthe 3${price[3].text}');
                        cubit.boxcheck[position]=!cubit.boxcheck[position];
cubit.EditCheckBox(position, cubit.boxcheck[position]);
                        if(cubit.boxcheck[position]==true)
                          {
                        SectionProducts.productss.add(
                            Product(productId: listproudacts[position].id.toString(), price: cubit.price[position].text,
                            quantity:cubit.quantity[position].text, expiryDate: cubit.expdata[position].text));

                          }
                        else (SectionProducts.productss.removeAt(position));
                        print( "thhesr${SectionProducts.productss}"  );
                      },
                      focusColor: Colors.green,
                      activeColor: Colors.green,
                      splashRadius: 30,
                    ),
                  )
                ],
              )
                ),

        ),
      );
    },
  );
}


 */



Widget customColumnOfTextAndTextInputTimeStart(BuildContext context,String titleInUp
    ,NoteOperationsCubit cubit,


    )
{
 return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      subtext("${titleInUp}", Colors.white),
      SizedBox(
        height: 10,
      ),

      Container(
          width: 215,
          height: 75,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white,width: 1),
            borderRadius: BorderRadius.circular(20),

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () async {

                  cubit.selectTime(context);
                },
                child: mainText(
                    "${cubit.showedStartTime}",

                    Colors.white)),
          )),
    ],
  );
}
Widget customColumnOfTextAndTextInputTimeEnd(BuildContext context,String titleInUp
    ,NoteOperationsCubit cubit,


    )
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      subtext("${titleInUp}", Colors.white),
      SizedBox(
        height: 10,
      ),

      Container(
          width: 215,
          height: 75,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white,width: 1),
            borderRadius: BorderRadius.circular(20),

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () async {

                  cubit.selectEndTime(context);
                },
                child: mainText(
                    "${cubit.showedEndTime}",

                    Colors.white)),
          )),
    ],
  );
}
