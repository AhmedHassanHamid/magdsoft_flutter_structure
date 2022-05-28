import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/default_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/password_text_form_filed.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/text_form_filed.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  bool password = false;
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
                  padding: const EdgeInsets.only(top: 30, left: 120),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 200,
                      ),
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
                      padding: const EdgeInsets.only(top: 40, left: 20),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            DefaultTextField(
                                controller: name, hintText: 'Full Name'),
                            DefaultTextField(
                                controller: email, hintText: 'Email'),
                                DefaultTextField(
                                controller: phone, hintText: 'Phone'),
                            DefaultPasswordField(
                              controller: passwordC,
                              hintText: 'Password',
                              password: password,
                              icon: Icon(Icons.visibility_off),
                            ),
                            SizedBox(height: 65),
                            Row(
                              children: [
                                DefaultAppButton(
                                  text: 'Register',
                                  backGround: AppColor.DarkBlue,
                                  fontSize: 20,
                                  height: 60,
                                  onTap: () {},
                                  width: 150,
                                  textColor: AppColor.white,
                                ),
                                SizedBox(width: 50),
                                DefaultAppButton(
                                  text: 'Login',
                                  backGround: AppColor.DarkBlue,
                                  fontSize: 20,
                                  height: 60,
                                  onTap: () {},
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
