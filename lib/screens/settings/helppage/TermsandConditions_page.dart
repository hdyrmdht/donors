import 'package:flutter/material.dart';


class TermsandConditions extends StatefulWidget {
  const TermsandConditions({super.key});

  @override
  State<TermsandConditions> createState() => _TermsandConditionsState();
}

class _TermsandConditionsState extends State<TermsandConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(backgroundColor: Color.fromARGB(255, 90, 23, 18),
        title:   Text(
                    'Terms & Condtions',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  
      ),
    
          body: SingleChildScrollView(
          child: Column(
            children: [
             
              SizedBox(height: 13,),

Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/terms.jpg',width: 400,),
        ),
  ],
),
SizedBox(height:100 ,),













 ])  ) );
  }
}