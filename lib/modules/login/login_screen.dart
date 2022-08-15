import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:offline_sms/modules/login/prefix_phone_filed/prefix_phone_filed.dart';
import 'package:offline_sms/modules/login/text_form_filed_login/text_form_field_login.dart';
import 'package:offline_sms/shared/components/components.dart';

import '../../shared/components/constants.dart';
import '../../shared/styles/colors.dart';
import '../../shared/styles/icon_broken.dart';
import '../../shared/styles/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _countryNameController;
  late final TextEditingController _phoneCodeController;
  String _displayCodeCountry = 'code';
  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _countryNameController = TextEditingController();
    _phoneCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        physics:  const BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: getWidth(context) * 0.15),
              Text(
                titleLoginScreen,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 30),
              ),
              HeightSpace(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: Text(
                  subTitleLoginScreen,
                  style: Theme.of(context).textTheme.subtitle2,
                  textAlign: TextAlign.center,
                ),
              ),
              HeightSpace(),
              BuildTextFormFieldLogin(
                controller: _countryNameController,
                hintText: 'select Country',
                suffixIcon: IconBroken.Arrow___Left_3,
                onTap: () {
                  hideKeyboard(context: context);
                  _countryPicker(context);
                },
              ),
              Container(
                decoration: decorationPhoneNumberContainer,
                child: BuildTextFormFieldLogin(
                  isPhoneNumberFiled: true,
                  controller: _phoneCodeController,
                  hintText: '  your phone number',
                  type: TextInputType.phone,
                  prefix: BuildPrefixPhoneField(
                    displayCodeCountry: _displayCodeCountry,
                  ),
                ),
              ),
              SizedBox(
                height: getWidth(context) * 0.09,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   BuildDefaultElevatedButton(
                      text: nextButtonLoginScreen,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // This is packages private show country
  _countryPicker(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        setState(() {
          _countryNameController.text =
              country.displayNameNoCountryCode.toString();
          _displayCodeCountry = country.phoneCode.toString();
          print('+' + country.phoneCode.toString());
        });
      },
      countryListTheme: CountryListThemeData(
        borderRadius: borderRadiusCountryDialog,
        inputDecoration: InputDecoration(
          hintText: countryTextLoginScreen,
          hintStyle: Theme.of(context).textTheme.caption!.copyWith(
            fontSize: 15.0,
          ),
          focusColor: Theme.of(context).primaryColor,
          fillColor: whiteColor,
          filled: true,
          focusedBorder:focusBorderSearchCountry ,
          border: borderSearchCountry ,
        ),
      ),
    );
  }



  var focusBorderSearchCountry = OutlineInputBorder(

    borderSide: BorderSide(
      color: primaryColor,
    ),
  );

  var borderSearchCountry = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        12.0,
      ),
    ),
    borderSide: BorderSide(
      color:borderSearchFiledLogin ,
    ),
  );


}
