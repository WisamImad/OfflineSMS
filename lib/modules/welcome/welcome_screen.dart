import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 4,
                child: Image.asset("assets/images/welcome.png")
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    WelcomeText,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  HeightSpace(),
                  TextButton(
                      onPressed: () {},
                      child: Text("استمر بالعربية",style: TextStyle(fontSize: 20),)
                  ),
                  HeightSpace(),
                  defaultButton(text: "Start Masseging", function: (){}),
                  HeightSpace(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
