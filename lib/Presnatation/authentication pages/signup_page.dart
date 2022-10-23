// import 'package:email_validator/email_validator.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Animation/CustomPageRoute.dart';
import '../../Data/shared_preference .dart';
import '../../Data/shared_preference .dart';
import '../../constant/component vesrion2.dart';
import '../../constant/component.dart';
import '../../constant/icon_broken.dart';
import '../../logic/Cubit Authentication Operations/authentication_operations_cubit.dart';
import '../main screen.dart';
import 'login_page.dart';

// import '../components/buttons.dart';

class SignUp extends StatelessWidget {
  // هدول ال controller
  // مشان ال textFields

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final rePasswordController = TextEditingController();
  final genderController = TextEditingController();
  final dateOfBirthDayController = TextEditingController();

  // هاد ال key مسان ال  validator
  //1
  final formKey = GlobalKey<FormState>();

  //متغير ل تحديد طهور ال password
  bool adminPasswordVisibility = true;

  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var color = Theme.of(context);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: h * 0.075,
        title: Padding(
          padding: const EdgeInsets.all(4),
          child: mainText("Signup", Theme.of(context).textSelectionColor),
        ),
      ),
      body: BlocConsumer<AuthenticationOperationsCubit,
          AuthenticationOperationsState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is SuccessSignUpState) {
            toastMessage("The account was created successfully.", context);

            push(context, LogInPage());
          }

          //في حال دخل كلمة سر خطأ
          if (state is FailedSignUpState) {
            toastMessage("Something's wrong. Please try again.", context);
          }
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = AuthenticationOperationsCubit.get(context);
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Theme.of(context).backgroundColor,
                  Theme.of(context).backgroundColor
                ],
                    //    colors: [Color(0xFF403A3E), Color(0XFFBE5869)],
                    stops: [
                  0.2,
                  1
                ])),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: formKey,
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/assets/Image/signup.png'))),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mainTextBold(
                              "Sign UP", color.textSelectionHandleColor),

                          SizedBox(
                            height: h * 0.020,
                          ),
                          defaultformField(
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return "Email can't be Empty";
                                } else if (!value.contains('@')) {
                                  return "Wrong format for Email validate,must be contain @";
                                }
                              },
                              prefix: Icons.email,
                              lable: 'Email',
                              controller: emailController,
                              type: TextInputType.emailAddress,
                              context: context,
                              titleTextColor: color.textSelectionHandleColor),
/*
                          textFromFieldCustom('Email','example123@gmail.com',color.textSelectionHandleColor,emailController,
                              TextInputType.emailAddress,context,color.hintColor),

 */
                          SizedBox(
                            height: h * 0.01,
                          ),
                          defaultformField(
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return "First Name can't be Empty";
                                }
                              },
                              prefix: Icons.person,
                              lable: 'First Name',
                              controller: firstNameController,
                              type: TextInputType.emailAddress,
                              context: context,
                              titleTextColor: color.textSelectionHandleColor),
                          /*
                          textFromFieldCustom('Fisrt name','Samy ',color.textSelectionHandleColor,firstNameController,
                              TextInputType.text,context,color.hintColor),

                           */
                          SizedBox(
                            height: h * 0.01,
                          ),
                          defaultformField(
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return "Last Name can't be Empty";
                                }
                              },
                              prefix: Icons.person,
                              lable: 'Last name',
                              controller: lastNameController,
                              type: TextInputType.emailAddress,
                              context: context,
                              titleTextColor: color.textSelectionHandleColor),
                          /*
                          textFromFieldCustom('Last name',' Farraj',color.textSelectionHandleColor,lastNameController,
                              TextInputType.text,context,color.hintColor),

                           */
                          SizedBox(
                            height: h * 0.01,
                          ),
                          customDropDown(
                            context,
                            cubit.genders,
                            "Select Gender",
                            "Gender",
                            cubit.changeSelectedGender,
                          ),
                          /*  textFromFieldCustom('gender',' Farraj',color.textSelectionHandleColor,genderController,
                              TextInputType.text,context,color.hintColor),


                         */

                          SizedBox(
                            height: h * 0.01,
                          ),
                          Row(
                            children: [
                              subtext("Select Date : ", color.hintColor),
                              Container(
                                  width: w * 0.50,
                                  height: h * 0.060,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .textSelectionHandleColor,
                                        width: 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: GestureDetector(
                                        onTap: () async {
                                          final choosedDate =
                                              await cubit.pickDate(context);
                                          cubit.date = DateTime(
                                            choosedDate!.year,
                                            choosedDate.month,
                                            choosedDate.day,
                                            choosedDate.hour,
                                            choosedDate.minute,
                                          );

                                          cubit.showSelectedDate();
                                        },
                                        child: subtext(
                                            "${cubit.showedDate}",
                                            Theme.of(context)
                                                .textSelectionHandleColor)),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
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
                                else if(passwordController!=rePasswordController)
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
                              prefix:Icons.lock,
                              lable: 'Config Password',
                              controller: rePasswordController,
                              type: TextInputType.emailAddress,
                              context: context,
                              titleTextColor: color.textSelectionHandleColor),
                          /*
                          textFromFieldCustom('RePassword','More Than 8 Char',color.textSelectionHandleColor,rePasswordController,
                              TextInputType.text,context,color.hintColor),

                           */
                          SizedBox(
                            height: h * 0.01,
                          ),
                          SizedBox(
                            height: h * 0.010,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.0150,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: SizedBox(
                                  width: w * 0.9,
                                  child: subtext(
                                      "By signing up, you're agree to our Terms & Conditions and Privacy Policy",
                                      color.hintColor))),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      ConditionalBuilder(
                          condition: state is RefreshLevelState ||
                              state is AuthenticationOperationsInitial,
                          builder: (context) => GestureDetector(
                                onTap: () {

                                  if(formKey.currentState!.validate())
                                  {
                                    cubit.signUp(
                                        firstNameController.text,
                                        lastNameController.text,
                                        emailController.text,
                                        passwordController.text,
                                        rePasswordController.text);

                                    emailController.clear();
                                    firstNameController.clear();
                                    lastNameController.clear();
                                    rePasswordController.clear();
                                    passwordController.clear();
                                  }


                                },
                                child: Container(
                                    width: double.infinity,
                                    height: h * 0.07,
                                    child: GestureDetector(
                                        onTap: () {
                                          print("dsadlas");
                                          cubit.signUp(
                                              firstNameController.text,
                                              lastNameController.text,
                                              emailController.text,
                                              passwordController.text,
                                              rePasswordController.text);
                                        },
                                        child: longCustomButton(
                                            "Continue",
                                            color.textSelectionColor,
                                            color.buttonColor,
                                            context))),
                              ),
                          fallback: (context) => const Center(
                                child: spinkit,
                              )),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Row(
                        children: [
                          subtext("Joined us before?", color.hintColor),
                          GestureDetector(
                              onTap: () {
                                push(context, LogInPage());
                              },
                              child: subtext(
                                  "Login", color.textSelectionHandleColor)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
