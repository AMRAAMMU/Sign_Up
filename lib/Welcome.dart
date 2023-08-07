 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Login.dart';

class Welcome extends StatefulWidget {
   const Welcome({super.key});

   @override
   State<Welcome> createState() => _WelcomeState();
 }

 class _WelcomeState extends State<Welcome> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         alignment: Alignment.center,
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/travel-aesthetic-phone-y6f47qias6u88axb.jpg'),
             fit: BoxFit.fill
           )
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('Hei, Welcome to',
               style: TextStyle(
                 color: Colors.white60,
                 fontWeight: FontWeight.bold,
                 fontSize: 20
               ),
             ),
             Text('TravelGo!',
               style: TextStyle(
                 color: Colors.white60,
                 fontWeight: FontWeight.bold,
                 fontSize: 30
               ),
             ),
             SizedBox(height: 400),
               GestureDetector(
                 onTap: (){},
                 child: Icon(Icons.arrow_circle_right_outlined,
                      color: Colors.white70,
                      size: 70,
                    ),
               ),
           ],
         ),
       ),
     );
   }
 }
