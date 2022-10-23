
import 'package:amer_app_v1/theme/cubit%20theme/dynamic_theme_cubit.dart';
import 'package:amer_app_v1/theme/theme.dart';
import 'package:amer_app_v1/translations/codegen_loader.g.dart';
import 'package:cron/cron.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:http/http.dart' as http;

import 'Data/shared_preference .dart';

import 'Presnatation/main screen.dart';


import 'Presnatation/splash screen.dart';
import 'api/model/translations model.dart';
import 'constant/component.dart';

import 'constant/constant string.dart';
import '../../logic/Cubit Authentication Operations/authentication_operations_cubit.dart';

import 'package:flutter_offline/flutter_offline.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'firebase_options.dart';
import 'package:flutter/services.dart';

import 'logic/Cubit translations operations/translations_operations_cubit.dart';
/**
 *
 *
 * Clipboard.setData(ClipboardData());
    HapticFeedback.heavyImpact();
    هي مشان استخدام الاهتزاز
    طبعا هي المرحلة الاخيرة
    في الاولى هي تنزل سطر الاذونات في ملف ال androidmanifest
    والثانية تعمل امبورت للسطر التالي
    import 'package:flutter/services.dart';


 */
Future <  Map<String,dynamic> > getTranslations(String language) async
{
  print("helllllo");
  var response = await http.get(
      Uri.parse('${baseUrl}api/$language'),
      headers: <String, String>
      {
        'Accept':'application/json'
      }
  );

  print("${response.statusCode}");

  if (response.statusCode == 200) {

    List<TranslationsResponse> translationsResponse=translationsResponseFromJson(response.body);
    Map<String,dynamic> arr={};
    return CodegenLoader.ar = Map.fromIterable(translationsResponse, key: (e) => e.key, value: (e) => e.value);

    // return jsonDecode(response.body)['access_token'];
  } else {

    return {};
  }
}
Future <  Map<String,dynamic> > getTranslationsEnglish(String language) async
{
  print("helllllo");
  var response = await http.get(
      Uri.parse('${baseUrl}api/$language'),
      headers: <String, String>
      {
        'Accept':'application/json'
      }
  );

  print("${response.statusCode}");

  if (response.statusCode == 200) {

    List<TranslationsResponse> translationsResponse=translationsResponseFromJson(response.body);
    return CodegenLoader.en = Map.fromIterable(translationsResponse, key: (e) => e.key, value: (e) => e.value);

    // return jsonDecode(response.body)['access_token'];
  } else {

    return {};
  }
}
Future main() async {

  // final cron=Cron();
  //
  // /*
  //
  // * النجوم هنا تشير الى انه
  // *
  // النجمة الاولى من اليسار ثواني بعدين دقائق بعدين ساعات
  // ببعدين ايام بعدين اشهر بعدين سنوات
  // في المثال تحت انا حاطط انو كل ثانية يطبع جملة evrey seconde
  //
  //
  // الشكل التالي بخليها تعمل ل
  // خمس دقايق اول ما يشتغل التطبيق فقط
  // ( ' 1,2,3,4,5 * * * *)
  //
  // الشكل التالي لنخي التابع يشتغل كل احد بشهر ماي مثلا
  // ( ' * * * May Sunday
  // * */
  // cron.schedule(Schedule.parse('*/1 * * * * *'), () async=> {
  //   print('evrey second')
  // });


await getTranslations('ar');
await getTranslationsEnglish('en');

  //1 for notfication
  WidgetsFlutterBinding.ensureInitialized();
  //2 for notfication
  await EasyLocalization.ensureInitialized();
 // await Firebase.initializeApp();
  //HydratedBloc.storage.clear();
  HydratedBloc.storage=await HydratedStorage.build(storageDirectory: await getTemporaryDirectory());
  /*
  FirebaseMessaging.instance.getToken().then((value) => print('the token device is ${value}'));
 // listenseronNoticication();
  FirebaseMessaging.instance.getToken().then((value) {
    String? token = value;
    print(value);
  });

   */


  runApp(

      EasyLocalization(
        path: "lib/assets/translations",
        supportedLocales: [
          Locale('en'),
          Locale('ar'),
        ],
        assetLoader: CodegenLoader(),
        fallbackLocale: const Locale('en'),
        child: const LanguagePage(),)

  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

//static LocalNotificationService notificationService =LocalNotificationService();
Future<String> checkAuthenticated() async {
  String? tokenUser='';
  SharedPreferences prefs = await SharedPreferences.getInstance();
   tokenUser = prefs.getString('Token');
print("hollad");
  if(tokenUser != null && tokenUser !='')
  {
    print("the token is ${tokenUser}");
    token=tokenUser;

    print("log in user ");

    firstName=prefs.getString('firstName')!;
    lastName=prefs.getString('lastName')!;
    gender=prefs.getString('gender')!;
    email=prefs.getString('email')!;

    return token;
  }
  else
  {
    print("fsdlkfs");
    return '';
  }

}
  @override
  void initState() {
    checkAuthenticated().then((value)
    {

      setState(() {
        checkAuthenticated();
      });
    }

    );
    // TODO: implement initState
    super.initState();
 //   notificationService.initilaisNotifications();
  }

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (BuildContext context) =>TranslationsOperationsCubit()..getTranslations('ar')..printmy()
          ),
          /*
          BlocProvider(
              create: (BuildContext context) =>
              NoteOperationsCubit()..getAllNoteFromTable()..initailenotifaction(notificationService)..getAllNoteFromTableByStatus()
          ),

           */
          BlocProvider(
              create: (BuildContext context) =>
              DynamicThemeCubit()
          ),

          BlocProvider(
              create: (BuildContext context) =>
                  AuthenticationOperationsCubit()
          ),





        ],
        child: BlocBuilder<DynamicThemeCubit, DynamicThemeState>(
  builder: (context, state) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: appThemeData[state.theme],
          color: Color(0xFF37474F),
          ////مشان الترجمة هدول التلاتة يلي تحتق
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
          ////
          home: MainScreen(),
          //done//

        );
  },
),
      );
  }
}


class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) =>TranslationsOperationsCubit()..getTranslations('ar')..printmy()
        ),
        /*
          BlocProvider(
              create: (BuildContext context) =>
              NoteOperationsCubit()..getAllNoteFromTable()..initailenotifaction(notificationService)..getAllNoteFromTableByStatus()
          ),

           */
        BlocProvider(
            create: (BuildContext context) =>
                DynamicThemeCubit()
        ),

        BlocProvider(
            create: (BuildContext context) =>
                AuthenticationOperationsCubit()
        ),


      ],
      child: BlocBuilder<DynamicThemeCubit, DynamicThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Sizer',
            theme: appThemeData[state.theme],
            color: Color(0xFF37474F),
            ////مشان الترجمة هدول التلاتة يلي تحتق
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            locale: context.locale,
            ////
            home: MainScreen()
            //done//

          );
        },
      ),
    );



  }
}
