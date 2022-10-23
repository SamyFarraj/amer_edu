import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../constant/component vesrion2.dart';
import '../../constant/component.dart';
import '../../logic/Cubit Authentication Operations/authentication_operations_cubit.dart';
import '../../logic/Cubit Note Operations/note_operations_cubit.dart';
import '../../theme/cubit theme/dynamic_theme_cubit.dart';
import '../../theme/theme.dart';

class ThemeSettingPage extends StatelessWidget {
  ThemeSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: Padding(
          padding: const EdgeInsets.all(4),
          child: mainText("Themes",Theme.of(context).textSelectionColor),
        ),
      ),
      body: BlocConsumer<NoteOperationsCubit, NoteOperationsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          var cubit = NoteOperationsCubit.get(context);
List nameTheme=['Dark Mode','Light Mode'];
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
              child: ListView.separated(

                itemCount: AppTheme.values.length,
                itemBuilder: (context, index) {
                  final itemAppTheme = AppTheme.values[index];
                  return
                    GestureDetector(

                      child: buttonWithUnderLineWithIcon(Theme.of(context).buttonColor,Theme.of(context).textSelectionColor,
                          Theme.of(context).hintColor,
                          "${nameTheme[index]}",

                          Icons.dark_mode,context
                      ),
                      onTap: (){
                         context.read<DynamicThemeCubit>().changeTheme(itemAppTheme);
                      }
                      ,
                    );
                  /*
                    Container(

                      height: 80,
                      child: Card(
                        elevation: 5,
                        color: Colors.yellowAccent,
                        child: ListTile(onTap: () => context.read<DynamicThemeCubit>().changeTheme(itemAppTheme), title: subtext(itemAppTheme.toString(),Theme.of(context).primaryColor
                        )
                        ),
                      ),
                    );

                   */
                }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 5); },),
            ),
          );
        },
      ),
    );

  }

}
