import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

class BuildTextFormFieldLogin extends StatelessWidget {
  final TextEditingController controller;
  final void Function()? onTap;
  final String hintText;
  final IconData? suffixIcon;
  final Widget? prefix;
  final bool isPhoneNumberFiled;
  final TextInputType? type;
  String? Function(String?)? validator;

  BuildTextFormFieldLogin({
    Key? key,
    required this.controller,
    this.onTap,
    required this.hintText,
    this.suffixIcon,
    this.isPhoneNumberFiled = false,
    this.type,
    this.prefix,
    this.validator
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      keyboardType: type ?? null,
      validator: this.validator,
      style:TextStyle(
        color: Theme.of(context).scaffoldBackgroundColor==Colors.black?blackColor:Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.caption!.copyWith(
              fontSize: 16.0,
            ),
        contentPadding: !isPhoneNumberFiled
            ? EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 0.0,
              )
            : EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 12.0,
              ),
        border: !isPhoneNumberFiled
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColorLogin,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(0.0),
                ),
              )
            : InputBorder.none,
        suffixIcon: suffixIcon != null
            ? Icon(
                suffixIcon,
                color: borderColorLogin,
              )
            : null,
        prefixIcon: prefix ?? null,
      ),
    );
  }
}
