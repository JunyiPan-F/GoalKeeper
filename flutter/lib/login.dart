import 'package:flutter/material.dart';
import 'verify.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:get/get.dart';
import 'common/colors.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'US');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG_COLOR, 
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 15),   
          child: ListView(
            children:[ Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 200),
                const Text(
                  'Sign in with',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Myanmar Khyay',
                    color: TEXT_COLOR,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: CREAM_COLOR,//BG_COLOR,
                  ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 10),
                  //     
                        child: InternationalPhoneNumberInput(
                          
                          onInputChanged: (PhoneNumber number) {
                            print(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            useBottomSheetSafeArea: true,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: TextStyle(color: TEXT_COLOR, fontFamily: 'Myanmar Khyay'),
                          initialValue: number,
                          textFieldController: controller,
                          formatInput: true,
                          keyboardType: TextInputType.numberWithOptions(
                            signed: true,
                            decimal: true,
                          ),
                          // inputBorder: OutlineInputBorder(),
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        ),
                      )
                  ),
                ),
                SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () {
                    Get.to(PhoneVerificationPage(phoneNumber: "6107515390",));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: BUTTON_COLOR,
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.28, vertical: 20), // Adjusted padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Text('Sign In',
                      style: TextStyle(
                      fontFamily: 'Myanmar Khyay',
                      color: TEXT_COLOR,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            ]
          ),
        ),
      ),
    );
  }
  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
