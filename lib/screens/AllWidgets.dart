
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/screens/AllButtons.dart';
import 'package:testapp/screens/ImageBgImage.dart';

class AllWidgets extends StatelessWidget {
  const AllWidgets({super.key});


  Route _createRoute(Widget destination) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => destination,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Widget"),),
      body: SingleChildScrollView(
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.of(context).push(_createRoute(const AllButtons())); // with some animation
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context)=>AllButtons())
                // );  // Normal way
                
              },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey,
                    fixedSize: Size(300, 40)
                  ),
                  child: Text("Buttons",style: TextStyle(color: Colors.black),)
              ),
              GestureDetector(onTap: (){
                Navigator.of(context).push(_createRoute(const ImageBgImage()));

                },
              child:  ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child:  Image.network('https://picsum.photos/200/300',
                    height: 240,
                    width: 350,
                    fit:BoxFit.cover
                  // scale: ,

                ),) ,
              )


            ],
          ),
        ),
      ),
    );
  }
}
