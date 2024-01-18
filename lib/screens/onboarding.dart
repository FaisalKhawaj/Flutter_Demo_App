import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('assets/images/onboarding1.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              toolbarHeight: 10,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            // bottomNavigationBar: Container(
            //   padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            //   height: 44.0 + MediaQuery.of(context).padding.bottom,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       IconButton(
            //           onPressed: () {
            //             print("IconButton");
            //           },
            //           icon: Icon(Icons.star)),
            //       IconButton(
            //           onPressed: () {
            //             print("IconButton");
            //           },
            //           icon: Icon(Icons.home)),
            //       IconButton(
            //           onPressed: () {
            //             print("IconButton");
            //           },
            //           icon: Icon(Icons.home)),
            //       IconButton(
            //           onPressed: () {
            //             print("IconButton");
            //           },
            //           icon: Icon(Icons.home)),
            //     ],
            //   ),
            // ),
            body: Center(
              child: Column(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
               disabledMouseCursor: SystemMouseCursors.none,
                      enableFeedback: false,
                      // disabledBackgroundColor:
                    ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Skip',
                            style:TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 20,
                            color: Colors.white,
                          ),
                        ],
                      )),
               const  SizedBox(
                    height: 100,
                  ),
                  Image.asset('assets/images/logo.png'),
                 const SizedBox(
                    height: 100,
                  ), Column(

  children:[
    Padding(padding: EdgeInsets.only(left: 25,right: 25),
    child: Text('Avantad has transformed the passive act of ad-watching into a thrilling experience for you to win real money',
        textAlign: TextAlign.center,
        style:
        TextStyle(
            fontSize:24,
            color:Colors.white,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w700
        )
    ) ,
    ),
    Container(
       alignment:Alignment.center,
       margin: EdgeInsets.symmetric(horizontal:20,vertical: 20),
       padding: EdgeInsets.only(left: 20,right: 20),

       child:Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
           textAlign: TextAlign.center,
           style: TextStyle(color: Color.fromRGBO(171, 171, 171, 1,),
               fontSize: 14,
               fontFamily: 'Comfortaa',
               fontWeight: FontWeight.w400
           )
       ))
    ]
)

                ],
              ),
            ))
      ],
    );
  }
}
