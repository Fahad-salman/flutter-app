// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_application/view/login_page.dart';

class SetNewPassword_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.black,
          // ),
      body: Container(
        margin: EdgeInsets.all(24),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _header(context),
          _inputField(context),
        ]),
      ),
    ));
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "New Password",
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        ),
        Text("Enter your new password",
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
              hintText: "New password...",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.password)
              ),
              obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "Confirm new password...",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
                
              ),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.password)),
              obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Get.off(Login_page());
            },
            child: Text(
              "Confirm",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 18)
            ),)
      ],
    );
  }
}
