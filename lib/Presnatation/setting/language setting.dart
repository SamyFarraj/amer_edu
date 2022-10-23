import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../Animation/CustomPageRoute.dart';
import '../../constant/component vesrion2.dart';
import '../../constant/component.dart';
import '../../logic/Cubit Authentication Operations/authentication_operations_cubit.dart';
import '../../logic/Cubit Note Operations/note_operations_cubit.dart';

class LanguageSettingPage extends StatelessWidget {
  LanguageSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: Padding(
          padding: const EdgeInsets.all(4),
          child: mainText("Language",Theme.of(context).textSelectionColor),
        ),
      ),
      body: BlocConsumer<NoteOperationsCubit, NoteOperationsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          var cubit = NoteOperationsCubit.get(context);

          return Container(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(

                      child: buttonWithUnderLine(Theme.of(context).textSelectionColor,
                          Theme.of(context).hintColor,
                          "English",
                        context
                      ),
                      onTap:
                          ()async{

                            await context.setLocale(Locale('en'));

                        },

                    ),
                    GestureDetector(

                      child: buttonWithUnderLine(Theme.of(context).textSelectionColor,
                          Theme.of(context).hintColor,
                          "Arabic",
                          context
                      ),
                      onTap: ()async{

                        await context.setLocale(Locale('ar'));



                        },
                    ),

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );

  }

}
