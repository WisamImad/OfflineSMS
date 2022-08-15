import 'package:flutter/material.dart';

import '../styles/styles.dart';


class BuildDefaultElevatedButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const BuildDefaultElevatedButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: styleElevatedButton(context),
    );
  }
}

hideKeyboard({
  required BuildContext context,
}) async {
  return FocusScope.of(context).requestFocus(FocusNode());
}

getHeight(BuildContext context) => MediaQuery.of(context).size.height;

getWidth(BuildContext context) => MediaQuery.of(context).size.width;

Widget HeightSpace()=>SizedBox(
  height: 30.0,
);
Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  required String text,
  required Function function,
}) =>
    Container(
      width: width,
      height: 60.0,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: background,
      ),
    );

PreferredSizeWidget defaultAppBar({
  required BuildContext context,
  required String title,
  required Widget? leading,
  void Function()? onTapLeading,
  Widget? action,
  bool centerTitle = true,
}) =>
    AppBar(
      title: Text(title),
      leading: InkWell(
        onTap: onTapLeading,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0),
          child: leading,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          child: Center(child: action ?? null),
        ),
      ],
      centerTitle: centerTitle,
    );