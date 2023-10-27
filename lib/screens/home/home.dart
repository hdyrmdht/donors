// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bloodbank_donors/screens/home/posts_item.dart';
import 'package:flutter/material.dart';

import 'addpost_bottomsheet.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homescreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(onTap: (){
                onclickaddpost();
              },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "اكتب منشورك",
                      style: TextStyle(color: Colors.black38,
                      fontSize: 18,
                      ),textAlign: TextAlign.right,
                      
                  
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * .8,
                  height: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black12,
                  ),
                ),
              ),
              Spacer(),
              Container(
                child: Icon(
                  Icons.post_add_sharp,
                  size: 40,
                  color: Colors.grey[900],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => PostsItem(),
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemCount: 9)),
        ],
      ),
    );
  }

  onclickaddpost(){
    return showModalBottomSheet(isScrollControlled: true,
      context: context, 
      builder: (context)=>AddPostbtnSheet(),
      
      );
  }
}
