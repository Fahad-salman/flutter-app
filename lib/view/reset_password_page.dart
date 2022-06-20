// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get.dart';
import 'package:store_application/view/set_new_password.dart';

class ResetPassword_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // appBar: AppBar(            
          //   backgroundColor: Colors.black,
          //   ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _header(context),
            _inputField(context),
          ],
        ),
      ),
    ));
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Reset Password",
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        ),
        Text("Enter your email account",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
        Text("to get Verification message",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Enter Your Email...",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            prefixIcon: Icon(Icons.email),
            filled: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
         ElevatedButton(
          onPressed: () {
            Get.off(SetNewPassword_page());
          },
          child: Text(
            "Send",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          )),
      ],
    );
  }


}
