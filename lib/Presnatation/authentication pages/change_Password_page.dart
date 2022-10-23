// import 'package:email_validator/email_validator.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Animation/CustomPageRoute.dart';
import '../../constant/component vesrion2.dart';
import '../../constant/component.dart';
import '../../logic/Cubit Authentication Operations/authentication_operations_cubit.dart';
import '../main screen.dart';


// import '../components/buttons.dart';



class ChangePasswordPage extends StatelessWidget {
  // هدول ال controller
  // مشان ال textFields

  final rePasswordController = TextEditingController();
  final passwordController = TextEditingController();



  // هاد ال key مسان ال  validator
  final formKey = GlobalKey<FormState>();

  //متغير ل تحديد طهور ال password
  bool adminPasswordVisibility = true;

  ChangePasswordPage({Key? key}) : super(key: key);

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
          child: mainText("Change Password", Theme.of(context).textSelectionColor),
        ),
      ),
      body: BlocConsumer<AuthenticationOperationsCubit, AuthenticationOperationsState>(
        listener: (context, state) {
          if (state is SuccessFullEditPasswordState) {
            toastMessage(" Successful Password Change",context);

            push(context,MainScreen());


          }


          //في حال دخل كلمة سر خطأ
          if(state is FailureStatus)
          {
            toastMessage("Something's wrong. Please try again.",context);

          }
          // TODO: implement listener
        },
        builder: (context, state) {

          var cubit=AuthenticationOperationsCubit.get(context);
          return ConditionalBuilder(
              condition: true,
              builder:  (context)=>Container(
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
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [

                          Padding(

                            padding: const EdgeInsets.only(

                                top: 60, right: 0, bottom: 20, left: 2),

                            child: Container(

                              margin: EdgeInsets.all(1),

                              width: 300.0,

                              height: 350.0,

                              decoration: BoxDecoration(

                                  color:Colors.white,

                                  borderRadius: BorderRadius.circular(10.0),

                                  image: DecorationImage(

                                      image: AssetImage(

                                          'lib/assets/Image/newpassword.png'))),

                            ),

                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              mainTextBold("Enter\nNew Password ", color.textSelectionHandleColor),
                              SizedBox(height: h*0.020,),

                              defaultformField(
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return "Password can't be Empty";
                                    }
                                  },
                                  isPassword: cubit.isPass,
                                  suffix: cubit.isPass
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  suffixpressed: () {
                                    cubit.changePasswordSuffix();
                                  },
                                  prefix: Icons.lock,
                                  lable: 'Password',
                                  controller: passwordController,
                                  type: TextInputType.emailAddress,
                                  context: context,
                                  titleTextColor: color.textSelectionHandleColor),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              defaultformField(
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return "Password can't be Empty";
                                    }
                                    else if(passwordController.text!=rePasswordController.text)
                                    {
                                      return 'The password and verified password arent the same. Please retype the password.';
                                    }
                                  },
                                  isPassword: cubit.isPass,
                                  suffix: cubit.isPass
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  suffixpressed: () {
                                    cubit.changePasswordSuffix();
                                  },
                                  prefix: Icons.lock,
                                  lable: 'Config Password',
                                  controller: rePasswordController,
                                  type: TextInputType.emailAddress,
                                  context: context,
                                  titleTextColor: color.textSelectionHandleColor),
                              SizedBox(height: h*0.01,),
                              SizedBox(height: h*0.010,),


                            ],

                          ),

                          SizedBox(height: h*0.02,),
                          ConditionalBuilder(
                              condition: state is RefreshLevelState || state is AuthenticationOperationsInitial,
                              builder: (context) =>   Container(
                                  width: double.infinity,
                                  height: h*0.07,
                                  child: GestureDetector(
                                      onTap: (){
                                        if(formKey.currentState!.validate())
                                          {
                                            print("$passwordController  $rePasswordController");
                                            cubit.resetNewPassword(passwordController.text, rePasswordController.text);
                                            passwordController.clear();
                                            rePasswordController.clear();
                                          }
                                      },
                                      child: longCustomButton("Submit",color.textSelectionColor,color.buttonColor,context))),
                              fallback: (context) => const Center(
                                child: spinkit,
                              )),


                          SizedBox(height: h*0.02,),



                        ],
                      ),
                    ),
                  ),
                ),
              ),
              fallback:  (context)=>  Center(child: CircularProgressIndicator()

              )
          );
        },
      ),
    );
  }
}
