/*
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../constant/component.dart';


class ServiceProviderProfileExample extends StatelessWidget {
  ServiceProviderProfileExample(int idUser, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h=  MediaQuery.of(context).size.height;
    var color=Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: h*0.075,
        title: Padding(
          padding: const EdgeInsets.all(4),
          child: mainText("Missions", Theme.of(context).textSelectionColor),
        ),
      ),
      body: BlocConsumer<ServicesProvidedCubit, ServicesProvidedState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          return ConditionalBuilder(
              condition: ture,
              builder:  (context)=>Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Theme.of(context).backgroundColor,Theme.of(context).backgroundColor],
                        //    colors: [Color(0xFF403A3E), Color(0XFFBE5869)],
                        stops: [0.2, 1])),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                      ],
                    ),
                  ),
                ),
              ),
              fallback:  (context)=>  Center(child: CircularProgressIndicator()

              )
          );


        },
      ),
    );

  }

}


 */