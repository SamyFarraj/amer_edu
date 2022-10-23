import 'package:amer_app_v1/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Presnatation/main screen.dart';
import 'cubit theme/dynamic_theme_cubit.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>DynamicThemeCubit(),
    child: BlocBuilder<DynamicThemeCubit,DynamicThemeState>(

      builder:(context,state){
return MaterialApp(
  theme: appThemeData[state.theme],
  home: MainScreen(),
);
      },
    )



    );
  }
}
