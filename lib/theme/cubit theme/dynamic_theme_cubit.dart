import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

import '../theme.dart';

part 'dynamic_theme_state.dart';

class DynamicThemeCubit extends HydratedCubit<DynamicThemeState> {
  DynamicThemeCubit() : super(const DynamicThemeState(AppTheme.GreenLight));

  void changeTheme(AppTheme theme)=>emit(DynamicThemeState(theme));


  @override
  DynamicThemeState? fromJson(Map<String, dynamic> json) {
final theme =json ['theme'];
final currentTheme=AppTheme.values.firstWhere
  ((element) => element.toString()==theme);
return DynamicThemeState(currentTheme);
  }

  @override
  Map<String, dynamic>? toJson(DynamicThemeState state) {

    final theme={'theme':state.theme.toString()};
    return theme;
  }
}
