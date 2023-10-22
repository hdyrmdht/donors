import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName="homescreen";


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Container(
              width: double.infinity,
              height:37,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12,),
            ),
          ),
        ],
      ),
    ) ;
  }
}