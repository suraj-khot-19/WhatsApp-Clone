import 'package:flutter/material.dart';
import 'package:whatsapp/auth/screens/otp.dart';
import 'package:whatsapp/auth/widgets/app_bar.dart';
import 'package:whatsapp/auth/widgets/custom_button.dart';
import 'package:whatsapp/widgets/spacer.dart';

class PhoneNumberr extends StatefulWidget {
  const PhoneNumberr({super.key});

  @override
  State<PhoneNumberr> createState() => _PhoneNumberrState();
}

class _PhoneNumberrState extends State<PhoneNumberr> {
  final key = GlobalKey<FormState>();
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
      body: Form(
        key: key,
        child: Column(
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
                          child: TextFormField(
                            controller: ph,
                            decoration: InputDecoration(
                              hintText: "Phone number",
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2),
                              ),
                            ),
                            maxLength: 10,
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.green,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "enter Phone Number";
                              } else {
                                return null;
                              }
                            },
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
                if (key.currentState!.validate()) {
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
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
