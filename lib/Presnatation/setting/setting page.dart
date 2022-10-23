import 'package:amer_app_v1/Presnatation/setting/theme%20setting.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../Animation/CustomPageRoute.dart';
import '../../constant/color_app.dart';
import '../../constant/component vesrion2.dart';
import '../../constant/component.dart';
import '../../theme/cubit theme/dynamic_theme_cubit.dart';
import 'language setting.dart';
import 'notification_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  Future pushTo(BuildContext context, directions)
  {
   return Navigator.of(context).push(CustomePageRoute(child:directions));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: subtext("App Setting", Theme.of(context).textSelectionColor),

      ),
      body: BlocBuilder<DynamicThemeCubit, DynamicThemeState>(
        builder: (context, state) {

          double w = MediaQuery.of(context).size.width;
          double h=  MediaQuery.of(context).size.height;

          return SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width:h*0.500,
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 0,color: Theme.of(context).cardColor)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          subtext("Account", Theme.of(context).highlightColor),
                          SizedBox(height: h*0.0020,),
                          GestureDetector(

                            child: buttonWithUnderLine(Theme.of(context).textSelectionColor,
                                Theme.of(context).hintColor,
                                "+96356431620",
                                context
                            ),
                            onTap: ()async{




                            },
                          ),

                          GestureDetector(

                            child: buttonWithUnderLine(Theme.of(context).textSelectionColor,
                                Theme.of(context).hintColor,
                                "Samy Farraj",
                                context
                            ),
                            onTap: ()async{


                            },
                          ),
                          GestureDetector(

                            child: buttonWithUnderLine(Theme.of(context).textSelectionColor,
                                Theme.of(context).hintColor,
                                "Dont give up",
                                context
                            ),
                            onTap: ()async{


                            },
                          ),








                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: h*0.0015,),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: w*0.99,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 0,color: Theme.of(context).cardColor)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          subtext("General Settings", Theme.of(context).highlightColor),
                          SizedBox(height: h*0.0020,),

                          GestureDetector(

                            child: buttonWithUnderLineWithIcon(Theme.of(context).buttonColor,Theme.of(context).textSelectionColor,
                              Theme.of(context).hintColor,
                              "Theme Setting",

                              Icons.palette,context
                            ),
                            onTap: (){Navigator.of(context).push(CustomePageRoute(child:ThemeSettingPage()));},
                          ),
                          SizedBox(height: h*0.0015,),
                          GestureDetector(

                            child: buttonWithUnderLineWithIcon(Theme.of(context).buttonColor,Theme.of(context).textSelectionColor,
                                Theme.of(context).hintColor,
                                "Language Setting",

                                Icons.translate,context
                            ),
                            onTap: (){Navigator.of(context).push(CustomePageRoute(child:LanguageSettingPage()));},
                          ),
                          SizedBox(height: h*0.0015,),
                          GestureDetector(

                            child: buttonWithUnderLineWithIcon(Theme.of(context).buttonColor,Theme.of(context).textSelectionColor,
                                Theme.of(context).hintColor,
                                "Notifications Setting",

                                Icons.notifications,context
                            ),
                            onTap: (){
    Navigator.of(context).push(CustomePageRoute(child:NotificationPage()));

                            },
                          ),

                          SizedBox(height: h*0.0015,),







                          /*
                        //  subtext("Langug", col)
                          Container(
                              decoration: BoxDecoration(
                                color:Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: GestureDetector(
                                    onTap: () async{
                                      //   cubit.sqlDB.deltedate();
await context.setLocale(Locale('en'));
                                    },
                                    child: mainText("English", 25, Theme.of(context).textSelectionColor)),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                color:Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: GestureDetector(
                                    onTap: () async{
                                      //   cubit.sqlDB.deltedate();
                                      await context.setLocale(Locale('ar'));
                                    },
                                    child: mainText("Arabic", 25, mainGray)),
                              )),


                            */




                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: h*0.0015,),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width:w*0.99,
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 0,color: Theme.of(context).cardColor)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          subtext("Help", Theme.of(context).highlightColor),
                          SizedBox(height: h*0.0020,),
                          GestureDetector(

                            child: buttonWithUnderLine(Theme.of(context).textSelectionColor,
                                Theme.of(context).hintColor,
                                "privacy policy",
                                context
                            ),
                            onTap: ()async{




                            },
                          ),
                          GestureDetector(

                            child: buttonWithUnderLine(Theme.of(context).textSelectionColor,
                                Theme.of(context).hintColor,
                                "Send  Question",
                                context
                            ),
                            onTap: ()async{





                            },
                          ),
                          GestureDetector(

                            child: buttonWithUnderLine(Theme.of(context).textSelectionColor,
                                Theme.of(context).hintColor,
                                "About Us",
                                context
                            ),
                            onTap: ()async{





                            },
                          ),








                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: h*0.0015,),

              ],
            ),
          );
        },
      ),
    );
  }
}
