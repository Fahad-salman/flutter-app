// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_application/view/home_page.dart';
import 'package:store_application/view/register_page.dart';
import 'package:store_application/view/reset_password_page.dart';

class Login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotpassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        ),
        Text("Enter your account to login",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10,
        ),
        TextField(
          onTap: () {
            print("Username Taped");
          },
          decoration: InputDecoration(
              hintText: "Username...",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person)),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          onTap: () {
            print("password Taped");
          },
          decoration: InputDecoration(
            hintText: "Password...",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.password),
          ),
          obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            print("Login Taped");
            Get.to(Home_page());
          },
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        )
      ],
    );
  }

  _forgotpassword(context) {
    return TextButton(
        onPressed: () {
          Get.to(ResetPassword_page());
          print("Reset password Taped");
        },
        child: Text("Forgot Password?"));
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        TextButton(
            onPressed: () {
              print("Create new account Taped");
              Get.off(Register_page());
            },
            child: Text("Sign up")),
      ],
    );
  }

}
