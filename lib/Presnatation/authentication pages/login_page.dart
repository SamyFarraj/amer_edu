// import 'package:email_validator/email_validator.dart';
import 'package:amer_app_v1/Presnatation/authentication%20pages/reset_password_page.dart';
import 'package:amer_app_v1/Presnatation/authentication%20pages/signup_page.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../Animation/CustomPageRoute.dart';
import '../../constant/component vesrion2.dart';
import '../../constant/component.dart';
import '../../constant/icon_broken.dart';
import '../../logic/Cubit Authentication Operations/authentication_operations_cubit.dart';
import '../main screen.dart';


// import '../components/buttons.dart';



class LogInPage extends StatelessWidget {
  // هدول ال controller
  // مشان ال textFields

  final emailController = TextEditingController();
  final passwordController = TextEditingController();



  // هاد ال key مسان ال  validator
//  final loginFormKey = GlobalKey<FormState>();
  final formKey = GlobalKey<FormState>();

  //متغير ل تحديد طهور ال password
  bool adminPasswordVisibility = true;

  LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h=  MediaQuery.of(context).size.height;
    var color=Theme.of(context);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: h*0.075,
        title: Padding(
          padding: const EdgeInsets.all(4),
          child: mainText("Bee Cell", Theme.of(context).textSelectionColor),
        ),
      ),
      body: BlocConsumer<AuthenticationOperationsCubit, AuthenticationOperationsState>(
        listener: (context, state) {
          // TODO: implement listener

      if (state is SuccessfulLogin) {
        toastMessage("Login Successfully",context);
        push(context,MainScreen());


      }

      //في حال دخل كلمة سر خطأ
      if(state is ErrorPasswordState)
      {

        toastMessage("username or password is incorrect",context);
        //هون حط توست ماسج انو كلمة السر غلط
        print("رسالة الخطأ انو كلمة السر غلط");

      }
      // TODO: implement listener

        },
        builder: (context, state) {

          var cubit=AuthenticationOperationsCubit.get(context);
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
                  children: [

                    Padding(

                      padding: const EdgeInsets.only(

                          top: 40, right: 0, bottom: 20, left: 2),

                      child: Container(

                        margin: EdgeInsets.all(1),

                        width: 300.0,

                        height: 350.0,

                        decoration: BoxDecoration(

                            color:Colors.white,

                            borderRadius: BorderRadius.circular(10.0),

                            image: DecorationImage(

                                image: AssetImage(

                                    'lib/assets/Image/login.jpg'))),

                      ),

                    ),
                    Form(
                      key: formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            mainTextBold("Login", color.textSelectionHandleColor),
                            SizedBox(height: h*0.020,),
                            defaultformField(
                                validate: (value)
                                {
                                  if(value!.isEmpty)
                                  {
                                    return "Email can't be Empty";
                                  }
                                  else if (!value.contains('@'))
                                  {
                                    return "Wrong format for Email validate,must be contain @";
                                  }
                                },
                                prefix:Icons.email,
                                lable: 'Email', controller: emailController,
                                type: TextInputType.emailAddress,
                                context: context, titleTextColor: color.textSelectionHandleColor),
                            defaultformField(
                                validate: (value )
                                {
                                  if(value!.isEmpty)
                                  {
                                    return "Password can't be Empty";
                                  }
                                },
                                isPassword: cubit.isPass,
                                suffix: cubit.isPass ? Icons.visibility_outlined : Icons.visibility_off_outlined ,
                                suffixpressed: ()
                                {
                                  cubit.changePasswordSuffix();
                                },
                                prefix:Icons.lock,
                                lable: 'Password', controller: passwordController, type: TextInputType.emailAddress, context: context,
                                titleTextColor:  color.textSelectionHandleColor),
                            SizedBox(
                              height: h*0.0300,
                            ),


                            Column(
                              children: [
                                GestureDetector(
                                    onTap: (){},
                                    child: GestureDetector(
                                        onTap: (){
                                          push(context,ResetPasswordPage());
                                        },
                                        child: subtext("You can reset your password with your identification e-mail address by clicking ,Here", color.textSelectionHandleColor))),

                              ],
                            )

                          ],

                        ),
                      ),
                    ),
                    SizedBox(height: h*0.0150,),
                    ConditionalBuilder(
                        condition: state is RefreshLevelState || state is AuthenticationOperationsInitial,
                        builder: (context) => GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                              width: double.infinity,
                              height: h*0.07,
                              child: GestureDetector(
                                  onTap: (){
                                    print("hello ${emailController.text} ${passwordController.text}");

                                    if(formKey.currentState!.validate())
                                    {
                                      cubit.logInUser(emailController.text, passwordController.text,context);
//                                      passwordController.clear();
                                    }

                                  },
                                  child: longCustomButton("Login",color.textSelectionColor,color.buttonColor,context))),
                        ),
                        fallback: (context) => const Center(
                          child: spinkit,
                        )),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: w*0.4,
                          decoration: BoxDecoration(
                              border: Border.all(color: color.hintColor,width: 0.15)
                          ),
                        ),
                        subtext(" or ", color.hintColor),
                        Container(
                          width: w*0.4,
                          decoration: BoxDecoration(
                              border: Border.all(color: color.hintColor,width: 0.15)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: h*0.01,),

                    longCustomButton("Login With Facebook",color.textSelectionHandleColor,color.hintColor,context),
                    SizedBox(height: h*0.01,),

                    Row(
                      children: [
                        subtext("New to Logistics?", color.hintColor),
                        GestureDetector(
                            onTap: (){},
                            child: GestureDetector(
                                onTap: (){
                                  push(context,SignUp());
                                },
                                child: subtext("Register", color.textSelectionHandleColor))),

                      ],
                    )

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
