import 'package:shared_preferences/shared_preferences.dart';

import '../api/model/user level model/auth_user_level_model/user_information.dart';
import '../main.dart';

String token='';
String firstName='';
String lastName='';
String email='';
String gender='';
String codePrivate='';

saveUserInformationByShared(UserInformation info)async
{
  SharedPreferences pref= await SharedPreferences.getInstance();
  pref.setString('firstName', "${info.firstName}");
  pref.setString('lastName', "${info.lastName}");
  pref.setString('email', "${info.email}");
  pref.setString('gender', "${info.gender}");
}
editUserInformationByShared(UserInformation info)async
{
  SharedPreferences pref= await SharedPreferences.getInstance();
  pref.setString('firstName', "${info.firstName}");
  pref.setString('lastName', "${info.lastName}");
  pref.setString('email', "${info.email}");
  pref.setString('gender', "${info.gender}");
}

deleteUserInformationByShared(UserInformation info)async
{
  SharedPreferences pref= await SharedPreferences.getInstance();
  pref.setString('firstName', "");
  pref.setString('lastName', "");
  pref.setString('email', "");
  pref.setString('gender', "");
}


saveTokenByShared(String tokenUser)async
{
  SharedPreferences pref= await SharedPreferences.getInstance();
  pref.setString('Token', "$token");
  print(" tokeeeeeeeeeeeeeeeen \n  asds ${pref.getString('Token')}");
}
  getTokenByShared() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? theToken;
    theToken = pref.getString('tokenUser') ?? "";
    print("Userfsfdds ${token}");

    token = theToken;

  }

deleteTokenByShared() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('Token', '');

}
