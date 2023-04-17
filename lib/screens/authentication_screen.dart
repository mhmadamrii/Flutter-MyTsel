// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  // checkbox condition
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image login
              Container(
                child: Image.asset(
                  'lib/assets/login.png',
                  width: 147,
                  height: 133,
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              // text offer login
              const Text(
                "Silahkan masuk dengan nomor telkomsel kamu",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // text number handphone
              const Text(
                "Nomor HP",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // input phone number
              const SizedBox(
                height: 52,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Cth. 08232414XXXX",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // checkbox agreement
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: const Color(
                      0xFFEC2028,
                    ),
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() {
                          isChecked = value;
                        });
                      }
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        text: "Saya menyetujui ",
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("clicked syarat, ");
                              },
                            text: "Syarat, ",
                            style: const TextStyle(
                              color: Color(
                                0xFFEC2028,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text: "ketentuan, ",
                            style: TextStyle(
                              color: Color(
                                0xFFEC2028,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text: "dan ",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Privasi clicked");
                              },
                            text: "privasi ",
                            style: const TextStyle(
                                color: Color(
                                  0xFFEC2028,
                                ),
                                fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "Telkomsel",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // button enter
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isChecked
                      ? () =>
                          Navigator.pushNamed(context, '/second-authentication')
                      : null,
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(50),
                    backgroundColor: isChecked
                        ? const Color(0xFFEC2028)
                        : const Color(0xFFE4E5EA),
                  ),
                  child: Text(
                    "MASUK",
                    style: TextStyle(
                      color: isChecked
                          ? Colors.white
                          : const Color(
                              0xFF747D8C,
                            ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // or login with
              const Center(
                child: Text(
                  "Atau masuk menggunakan",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // outlined button facebook & twitter
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 190,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'lib/assets/facebook.png',
                        width: 20,
                        height: 50,
                      ),
                      label: const Text(
                        "Facebook",
                        style: TextStyle(
                          color: Color(
                            0xFF3B5998,
                          ),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFF3B5998),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'lib/assets/twitter.png',
                        width: 20,
                        height: 50,
                      ),
                      label: const Text(
                        "Twitter",
                        style: TextStyle(
                          color: Color(
                            0xFF1DA1F2,
                          ),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFF1DA1F2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // end of content
              const SizedBox(
                height: 0.00,
              )
            ],
          ),
        ),
      ),
    );
  }
}
