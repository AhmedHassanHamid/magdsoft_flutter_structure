import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class DefaultPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final VoidCallback? onTap;
  final bool password;
  final IconData? suffix;
  final ValueChanged? submit;
  final Widget? icon;

  const DefaultPasswordField({
    required this.controller,
    required this.hintText,
    this.submit,
    this.suffix,
    this.onTap,
    this.icon,
    required this.password,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: submit,
        style: const TextStyle(
          color: AppColor.black,
          fontSize: 18,
        ),
        maxLines: 1,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: icon),
          alignLabelWithHint: true,
          hintStyle: const TextStyle(
            fontSize: 15,
          ),
          filled: true,
          fillColor: AppColor.lightGray,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.black,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.transparent,
            ),
          ),
        ),
        obscureText: password,
      ),
    );
  }
}
