import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class DefaultTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool? readOnly;
  const DefaultTextField({
    required this.controller,
    this.hintText,
    this.readOnly,
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
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: TextFormField(
        readOnly: readOnly ?? false,
        controller: controller,
        style: const TextStyle(
          color: AppColor.black,
          fontSize: 15,
        ),
        maxLines: 1,
        decoration: InputDecoration(
          hintText: hintText,
          alignLabelWithHint: true,
          hintStyle: const TextStyle(
            fontSize: 15,
          ),
          filled: true,
          fillColor: AppColor.lightGray,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColor.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColor.black,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColor.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
