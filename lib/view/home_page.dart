// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:store_application/view/login_page.dart';

class Home_page extends StatelessWidget {

  _BottomNavigationBarItem(context) {
    return BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Container(
            margin: EdgeInsets.only(bottom: 7),
            child: Icon(Icons.person , size: 20),
          ),
          label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Icon(Icons.home, size: 20),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Icon(
                Icons.shopping_cart,
                size: 20,
              ),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Icon(
                Icons.location_on_outlined,
                size: 20,
              ),
            ),
            label: "Track order",
          ),
        ]);
  }
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.offAll(Login_page());
          },
          child: Icon(Icons.logout),
        ),
        bottomNavigationBar: _BottomNavigationBarItem(context),
        drawer: Drawer(),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                
          ]),)
        ]),
      ),
    );
  }

}
