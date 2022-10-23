import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../Data/shared_preference .dart';
import '../../api/model/user level model/auth_user_level_model/signup_informatios.dart';
import '../../api/model/user level model/auth_user_level_model/user_information.dart';
import '../../constant/constant string.dart';
part 'authentication_operations_state.dart';


class AuthenticationOperationsCubit extends Cubit<AuthenticationOperationsState> {
  AuthenticationOperationsCubit() : super(AuthenticationOperationsInitial());


  static AuthenticationOperationsCubit get(context) {
    return BlocProvider.of(context);
  }

  var message;

  List<String>genders=['female','male'];
  String currentLanguage='';
  late String showedDate = '****/*/**';
String currentGender='';
  String currentDate= DateFormat("yyyy/MM/dd").format(DateTime.now());
  DateTime date = DateTime(
    2001,
    1,
    1,
  );
  bool isPass = true;
  void changePasswordSuffix()
  {
    isPass = !isPass;
    emit(ChangeSuffixState());
    emit(RefreshLevelState());}
  changeSelectedGender(String? selectedGender)
  {
    print("the selected ${selectedGender}");
    emit(ChangeCurrentGender());
    currentGender = selectedGender!;
    emit(ChangeCurrentGender());
    emit(RefreshLevelState());

  }
  showSelectedDate() {

      showedDate = DateFormat("yyyy/MM/dd").format(date);
      currentDate=showedDate;
      print(currentDate);
    emit(ChangeDateState());
    emit(RefreshLevelState());

  }


  Future<DateTime?> pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final selectedDate = await showDatePicker(

      context: context,
      initialDate: initialDate,
      lastDate: DateTime(initialDate.year + 1),
      firstDate:DateTime(1950,1,1) ,
    );
    if (selectedDate == null) return null;
    return selectedDate;
  }

  Future<String> logInUser(String email, String pass,BuildContext context) async {
    emit(CheckPassword());
    var uri = Uri.parse('${baseUrl}api/user/login');
    var response = await http.post(
      uri,
      headers: <String, String>{
        'accept': 'application/json',
      },
      body: {
        'email': email,
        'password': pass,


      },
    );
    print("${response.statusCode}");

    if (response.statusCode == 200) {
      UserInformation info= userInformationFromJson(response.body);
      token = info.token;
      saveUserInformationByShared(info);
// message=responsejeson['success'];
    await saveTokenByShared(token);
      token = info.token;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var tokenUser = prefs.getString('Token');
      print("the my token ${tokenUser}") ;
      firstName=prefs.getString('firstName')!;
      lastName=prefs.getString('lastName')!;
     gender= currentGender=prefs.getString('gender')!;
      email=prefs.getString('email')!;

      emit(SuccessfulLogin());
      emit(RefreshLevelState());

      // return jsonDecode(response.body)['access_token'];
      return token;
    } else {
      emit(ErrorPasswordState());
      emit(RefreshLevelState());
      return 'fail';
    }
  }

  Future signUp(String firstName,String lastName, String email, String password,
      String rePassword) async {
    print("dasl;");
    emit(CheckInformation());
    var uri = Uri.parse('${baseUrl}api/user/register');
    var response = await http.post(
        uri,
        body: {
      'first_name': firstName,
      'last_name': lastName,
      'gender': currentGender,
      'date_of_birth': currentDate,
      'email': email,
      'password': password,
      'password_confirmation': rePassword,

    },
      headers: {
        'accept': 'application/json',

      }

    );
print("response is ${response.body}");
    if (response.statusCode == 200) {

      SignUpInformation information= signUpInformationFromJson(response.body);
      token = information.accessToken;
      emit(SuccessSignUpState());
      emit(RefreshLevelState());

      return response;
    } else

    {
      emit(FailedSignUpState());
      emit(RefreshLevelState());

      return "601";

    }
  }

  Future<String> updateUserProfile(String name, String phone) async {
    emit(EditAccountInfo());
    var uri = Uri.parse('${baseUrl}api/Admin/ProfileUpdate');
    var response = await http.post(
      uri,
      headers: <String, String>{
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}'
      },
      body: {
        'name':'${name}', 'phone':'${phone}'

      },
    );

    print('the statues is ${response.statusCode}');
    if (response.statusCode == 200) {

      emit(SuccessStatus());
      emit(RefreshLevelState());
      return response.body;

    }
    else {
      emit(FailureStatus());
      emit(RefreshLevelState());

      return (response.body.toString());
    }
  }


  resetNewPassword(String pass,String c_pass) async
  {
    emit(EditPasswordState());
    var response=await http.post(Uri.parse('${baseUrl}api/user/password/reset'),
        headers: <String,String>
        {
          'Accept':'application/json',
          'Authorization':'Bearer $token'

        },
        body:<String,String>
        {
          'password':pass,
          'password_confirmation':c_pass,
          'code':'$codePrivate'

        }
    );
    print('the response i ss${response.body}');
    if(response.statusCode==200)
    {
      emit(SuccessFullEditPasswordState());
      emit(RefreshLevelState());

      return response;
    }

    else {
      emit(FailureStatus());
      emit(RefreshLevelState());

      return response;
    }
  }

  //2
  Future <String> resetPasswordRequest(String email)async
  {
    emit(EditAccountInfo());

    var response=await http.post(Uri.parse('${baseUrl}api/user/password/email')
        ,headers: {
          'Accept':'application/json'
        },
      body: {
      'email':email
      }
    );
    print('the statues is ${response.body}');

    if (response.statusCode==200)
    {      emit(SuccessStatus());
    emit(RefreshLevelState());
      return 'seccccccc';
    }
    else

      {
        emit(FailureStatus());
        emit(RefreshLevelState());
        return response.statusCode.toString();
      }
  }
//3
  Future <String> checkCodeRequest(String code)async
  {
    emit(EditAccountInfo());
codePrivate=code;
    var response=await http.post(Uri.parse('${baseUrl}api/user/password/code/check')
        ,headers: {
          'Accept':'application/json'
        },
        body: {
          'code':code
        }
    );
    print('the statues is ${response.body}');

    if (response.statusCode==200)
    {      emit(SuccessStatus());
    emit(RefreshLevelState());
    return 'seccccccc';
    }
    else

    {
      emit(FailureStatus());
      emit(RefreshLevelState());
      return response.statusCode.toString();
    }
  }


  Future <String> logOut()async
  {
    //http://127.0.0.1:8000/api/Admin/logout
    var response=await http.get(Uri.parse('${baseUrl}api/User/logout')
        ,headers: {
          'Accept':'application/json',
          'Authorization':'Bearer $token'
        }
    );
    print('the re ${response.statusCode}');
    if (response.statusCode==200)
    {
      return 'seccful';
    }
    else return response.statusCode.toString();
  }

}
