// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;
import 'package:http/http.dart' as http;

import '../api/model/translations model.dart';
import '../constant/constant string.dart';


class CodegenLoader extends AssetLoader{
   CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
   // ar=x.toList();
    getTranslations('ar');
    print("tlkjlkdjfkkg${ar}");
    print("tlkjlkdjfkkg${en}");

    return Future.value(mapLocales[locale.toString()]);
  }

   static Map<String,dynamic> ar = {
   };

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
       print(ar);
       // return jsonDecode(response.body)['access_token'];
     } else {

       return {};
     }
   }


static  Map<String,dynamic> en = {
};
static  Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
