import 'package:flutter/material.dart';
import 'package:whatsapp/auth/screens/otp_verify_scrreen.dart';
import 'package:whatsapp/auth/widgets/app_bar.dart';
import 'package:whatsapp/auth/widgets/custom_button.dart';
import 'package:whatsapp/auth/widgets/unerline_border.dart';
import 'package:whatsapp/widgets/spacer.dart';

class PhoneNumberr extends StatefulWidget {
  const PhoneNumberr({super.key});

  @override
  State<PhoneNumberr> createState() => _PhoneNumberrState();
}

class _PhoneNumberrState extends State<PhoneNumberr> {
  String country = "India";
  String phCode = "+91";
  TextEditingController ph = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AuthMyAppBar(
          title: "Enter your phone number",
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                AddVerticleSpace(height: 10),
                Text("WhatsApp will need to verify your phone number."),
                AddVerticleSpace(height: 4),
                Text("Carrier caharge may apply. Whats's my number?"),
                AddVerticleSpace(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: DropdownButton(
                    isExpanded: true,
                    iconEnabledColor: Colors.green,
                    underline: Container(
                      color: Colors.green,
                      height: 2,
                    ),
                    value: country,
                    items: [
                      DropdownMenuItem(
                        child: Text("India"),
                        value: country,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        country = value!;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      DropdownButton<String>(
                        iconEnabledColor: Colors.green,
                        value: phCode,
                        underline: Container(
                          color: Colors.green,
                          height: 2,
                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text("+91"),
                            value: phCode,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            phCode = value!;
                          });
                        },
                      ),
                      AddHorizontalSpace(width: 10),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 17),
                          child: TextFormField(
                            controller: ph,
                            decoration: InputDecoration(
                              errorBorder: UnerlineBorder().borderUnderline(),
                              hintText: "Phone number",
                              enabledBorder: UnerlineBorder().borderUnderline(),
                              focusedBorder: UnerlineBorder().borderUnderline(),
                            ),
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            title: "Next",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Otp(
                      ph: ph.text.toString(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
