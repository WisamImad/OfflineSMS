import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

class BuildPrefixPhoneField extends StatelessWidget {
  final String displayCodeCountry;

  const BuildPrefixPhoneField({Key? key, required this.displayCodeCountry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsetsDirectional.only(
       end: 10.0,
       start: 10.0,
     ),
      child: Container(
        padding: EdgeInsetsDirectional.only(
          end: 10.0
        ),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: borderColorLogin,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayCodeCountry,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color:
                        Theme.of(context).scaffoldBackgroundColor == Colors.white
                            ? blackColor
                            : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
