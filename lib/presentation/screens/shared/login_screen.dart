import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/business_logic/global_cubit/global_cubit.dart';
import 'package:magdsoft_flutter_structure/constants/end_points.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/register_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/default_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/password_text_form_filed.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/text_form_filed.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  bool pass = true;

  show() {
    setState(() {
      pass = !pass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.DarkBlue,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 250,
                      ),
                      DefaultAppButton(
                          text: 'عربي',
                          backGround: AppColor.white,
                          fontSize: 15,
                          height: 30,
                          onTap: () {},
                          width: 70,
                          textColor: AppColor.black)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 100, left: 20, right: 15),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            DefaultTextField(
                                controller: email, hintText: 'Email'),
                            DefaultPasswordField(
                              controller: passwordC,
                              hintText: 'Password',
                              password: pass,
                              icon: IconButton(
                                icon: Icon(
                                  pass
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                onPressed: show,
                              ),
                            ),
                            SizedBox(height: 120),
                            Row(
                              children: [
                                DefaultAppButton(
                                  text: 'Register',
                                  backGround: AppColor.DarkBlue,
                                  fontSize: 20,
                                  height: 60,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterScreen()),
                                    );
                                  },
                                  width: 150,
                                  textColor: AppColor.white,
                                ),
                                Spacer(),
                                DefaultAppButton(
                                  text: 'Login',
                                  backGround: AppColor.DarkBlue,
                                  fontSize: 20,
                                  height: 60,
                                  onTap: () {
                                    email.text == '' && passwordC.text == ''
                                        ? print(
                                            'enter your email and your password')
                                        : GlobalCubit.get(context).userLogin(
                                                email: email.text,
                                                password: passwordC.text,
                                                endPoint: LOGIN).then((value){ Navigator.of(context)
                                                            .pushReplacementNamed('/userData',arguments:{
                                                              'namme' : GlobalCubit.get(context).loginResponse!.user,
                                                            } );
                                                            
                                                            });
                                                
                                  },
                                  width: 150,
                                  textColor: AppColor.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
