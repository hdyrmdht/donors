// ignore_for_file: prefer_const_constructors

import 'package:bloodbank_donors/screens/donors/donor.dart';
import 'package:bloodbank_donors/screens/hospitals/hospitals.dart';
import 'package:bloodbank_donors/screens/profile/profile.dart';
import 'package:flutter/material.dart';

import '../screens/settings/settings.dart';
import 'home.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "homeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor:  Color.fromARGB(255, 116, 26, 26),
          onPressed: () {  
         Navigator.pushNamed(context, ProfileScreen.routeName );
         
            //  showaddtaskbottomsheet();
          },
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.white, width: 4)),
          child: ImageIcon(AssetImage("assets/images/profile_icon.png"),
         
          )),
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Donor")),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 116, 26, 26),
        unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/home.png")),
                  label: "Home"),
                 
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hospital.png")),
                  label: "Hospitals"),
                  
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/blood-donor.png")),
                   label: "Donors"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings, 
                  size: 30),
                  label: "Settings"),
            ]),
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [
    HomeScreen(),
      HospitalScreen(),
    DonorScreen(),
  
    SettingsTab(),
    
   
  ];
}
