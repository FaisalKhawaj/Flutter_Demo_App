import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageBgImage extends StatelessWidget {
  const ImageBgImage({super.key});

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
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            // bottomNavigationBar: Container(
            //   padding:const EdgeInsets.only(left: 4.0, right: 4.0),
            //   height: 44.0 + MediaQuery.of(context).padding.bottom,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       IconButton(onPressed:() {print("IconButton");}, icon:Icon(Icons.star)),
            //       IconButton(onPressed:() {print("IconButton");}, icon:Icon(Icons.home)),
            //       IconButton(onPressed:() {print("IconButton");}, icon:Icon(Icons.home)),
            //       IconButton(onPressed:() {print("IconButton");}, icon:Icon(Icons.home)),
            //     ],
            //   ),
            // ),
            body:
            SingleChildScrollView(
              child:  Center(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.only(bottom: 0, right: 0),
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.grey.shade100),
                        image:const DecorationImage(
                            image: NetworkImage(
                              'https://picsum.photos/200/300',
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt_sharp),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                   const SizedBox(height: 10),
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: const DecorationImage(
                              image: NetworkImage('https://picsum.photos/200')),
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(1, 1),
                                blurRadius: 2,
                                spreadRadius: 5)
                          ]),
                    ),

                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(15),
                  //   child: Image.network('https://picsum.photos/200',
                  //   height: 100,
                  //   width: 100,
                  //
                  // ),)  ,
                  const SizedBox( height: 10 ), // Rectangular Image
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 490,
                      decoration:const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          shape: BoxShape.rectangle,
                          color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
// shape: BoxShape.circle,

                                      // shape: BoxShape.circle,
                                      border:
                                      Border.all(color: Colors.red, width: 1),
                                    ),
                                    child: Image.asset(
                                      'assets/images/unknown.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                const Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Text('Faisal'),
                                                      Text('@Username'),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text('3h'),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                            Icons.more_horiz))
                                                  ],
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                child: Image.asset(
                                                  'assets/images/onboarding1.png',
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 350,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.heart) ),
                                                IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.comment) ),
                                                IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.share) ),
                                                IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.bookmark) ),

                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    )
                  ],
                ),
              )),
            )

      ],
    );
  }
}
