// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SecondAuthentication extends StatefulWidget {
  const SecondAuthentication({super.key});

  @override
  State<SecondAuthentication> createState() => _SecondAuthenticationState();
}

class _SecondAuthenticationState extends State<SecondAuthentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // verivication image
              Container(
                child: Image.asset(
                  'lib/assets/verivication.png',
                  width: 147,
                  height: 133,
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              // text enter code that we send
              const Text(
                "Masukan kode unik yang kami kirim",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // text code that we send
              const Text(
                "Silahkan periksa SMS kamu da masukan kode unik yang kami kirimkan ke 082324149577",
              ),
              const SizedBox(
                height: 30,
              ),

              // input code that we send
              const Text(
                "Kode Unik",
              ),
              const SizedBox(
                height: 10,
              ),
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
                height: 20,
              ),

              // don't receive the code we send?
              Expanded(
                child: RichText(
                  text: const TextSpan(
                    text: "Tidak menerima SMS?  ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "kirim ulang",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
