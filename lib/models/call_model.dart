import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallModels {
  final String name;
  final String datetime;
  final Widget callicon;
  final String profilepic;

  CallModels({this.name, this.datetime, this.callicon, this.profilepic});
}

// ignore: non_constant_identifier_names
List<CallModels> call_dummy_data = [
  new CallModels(
      name: "Gabby",
      datetime: "December 2, 11.50 AM",
      callicon: Icon(
        Icons.call_missed,
        color: Colors.red,
      ),
      profilepic:
          "images/Abs_156.jpg"),
  new CallModels(
      name: "Enam",
      datetime: "December 1, 04:30 AM",
      callicon: Icon(
        Icons.call_missed,
        color: Colors.red,
      ),
      profilepic:
          "images/Nat_671.jpg"),
  new CallModels(
      name: "Tera",
      datetime: "November 25, 05:30 AM",
      callicon: Icon(
        Icons.call_missed,
        color: Colors.red,
      ),
      profilepic:
          "images/Mozzie_Chibi.jpg"),
  new CallModels(
      name: "Shelby",
      datetime: "November 20, 04:30 AM",
      callicon: Icon(
        Icons.call_missed,
        color: Colors.red,
      ),
      profilepic:
          "images/102.jpg"),
];
