
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../constant/component vesrion2.dart';
import '../../constant/component.dart';
import '../../logic/Cubit Authentication Operations/authentication_operations_cubit.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var color = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: h * 0.075,
        title: Padding(
          padding: const EdgeInsets.all(4),
          child: mainText(
              "Notifications Setting", Theme.of(context).textSelectionColor),
        ),
      ),
      body: BlocConsumer<AuthenticationOperationsCubit, AuthenticationOperationsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = AuthenticationOperationsCubit.get(context);
          return ConditionalBuilder(
              condition: true,
              builder: (context) => Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          Theme.of(context).highlightColor,
                          Theme.of(context).highlightColor
                        ],
                            //    colors: [Color(0xFF403A3E), Color(0XFFBE5869)],
                            stops: [
                          0.2,
                          1
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: color.backgroundColor,
                                borderRadius: BorderRadius.circular(10)

                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    mainText("Message", color.textSelectionHandleColor),
                                    iconTextIconsWithPushTo(Icons.notifications_active,Icons.chevron_right,"Notifications tone",color.hintColor,color.hintColor,context),
                                    SizedBox(height: h*0.01,),
                                    iconTextIconsWithSwitch(Icons.support_agent,Icons.chevron_right,"Virabtion",color.hintColor,color.hintColor,context),
                                    iconTextIconsWithSwitch(Icons.highlight,Icons.chevron_right,"Flash",color.hintColor,color.hintColor,context),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: h*0.03),
                            Container(
                              decoration: BoxDecoration(
                                  color: color.backgroundColor,
                                  borderRadius: BorderRadius.circular(10)

                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    mainText("Calls", color.textSelectionHandleColor),
                                    iconTextIconsWithPushTo(Icons.notifications_active,Icons.chevron_right,"Notifications tone",color.hintColor,color.hintColor,context),
                                    SizedBox(height: h*0.01,),
                                    iconTextIconsWithPushTo(Icons.support_agent,Icons.chevron_right,"Virabtion",color.hintColor,color.hintColor,context),
                                    iconTextIconsWithPushTo(Icons.highlight,Icons.chevron_right,"Flash",color.hintColor,color.hintColor,context),


                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: h*0.03),
                            Container(
                              decoration: BoxDecoration(
                                  color: color.backgroundColor,
                                  borderRadius: BorderRadius.circular(10)

                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    mainText("Videos", color.textSelectionHandleColor),
                                    iconTextIconsWithPushTo(Icons.notifications_active,Icons.chevron_right,"Notifications tone",color.hintColor,color.hintColor,context),
                                    SizedBox(height: h*0.01,),
                                    iconTextIconsWithPushTo(Icons.support_agent,Icons.chevron_right,"Virabtion",color.hintColor,color.hintColor,context),
                                    iconTextIconsWithPushTo(Icons.highlight,Icons.chevron_right,"Flash",color.hintColor,color.hintColor,context),


                                  ],
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
              fallback: (context) =>
                  Center(child: CircularProgressIndicator()));
        },
      ),
    );
  }
}
