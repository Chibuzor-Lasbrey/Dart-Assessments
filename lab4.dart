
import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:validators/validators.dart';
//import 'package:validators/validators.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff121421),
          body: Column(children: [
            Container(
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              width: 450,
              height: 259,
            ),
            Container(
              child: Center(
                child: Text(
                  "WELCOME BACK",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ),
              width: 450,
              height: 80,
            ),
            SizedBox(height: 1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 1),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: 'Email Address',
                ),
              ),
            ),
            SizedBox(height: 4),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 1),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Password',
                  ),
                )),
            SizedBox(height: 8),
            container(),
            SizedBox(height: 8),
            Container(
                child: Column(
              children: [
                Text(
                  "Forgot Password?",
                  style: TextStyle(fontFamily: "Roboto", color: Colors.white),
                ),
                SizedBox(height: 4),
                Text(
                  "Reset Password.",
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: Colors.blue),
                )
              ],
            ))
          ]))));
}

Container container() {
  return Container(
      child: Column(children: [
    Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 29, vertical: 1),
          child: (ElevatedButton(
              child: Text('Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16)),
              onPressed: () {
                print('pressed');
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.blue;
                    return Color(0xff4A80F0);
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                  )))))
    ])
  ]));
}
