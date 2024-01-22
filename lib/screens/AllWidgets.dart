
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/screens/AllButtons.dart';
import 'package:testapp/screens/ImageBgImage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/screens/interest/interest.dart';
import 'package:testapp/screens/listview/ListViewPractice.dart';
import 'package:testapp/screens/RowColumns.dart';

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
      appBar: AppBar(
        // leading: IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.bars),),
        title:const Text("All Widget"),
backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        ),
        foregroundColor: Colors.brown,
      ),
drawer: Drawer(
  backgroundColor: Color(0xFF00ADB5),
  child:  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
      height: 300,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide.none,top: BorderSide.none ), // Remove bottom border
      ),
      // padding:const EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      child: DrawerHeader(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide.none), // Remove bottom border
        ),
        // margin: EdgeInsets.symmetric(horizontal: 20),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            },
                style: IconButton.styleFrom(
                    backgroundColor: Color(0xFF00ADB5).withOpacity(0.95)
                ),
                icon: Icon(Icons.chevron_left,
                  color: Colors.white,

                )),
            Center(
              child:  Container(
                width: 130,
                height: 130,
                alignment: Alignment.center,
                margin:const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:const DecorationImage(
                        image: const NetworkImage(
                          'https://picsum.photos/200/300',
                        ),
                        fit: BoxFit.cover),
                ),
              ) ,
            )

          ],
        ) ,
      ),
    ),
  ListTile(
    textColor: Colors.white,
    leading: SvgPicture.asset('assets/svgs/taskSchedule.svg',width: 20,height: 20,
    ),
    title: const Text('Task Schedule',style: TextStyle(
        fontSize: 17,
    ),),
    onTap: () {
      // change app state...
      Navigator.pop(context); // close the drawer
    },

  ),
      ListTile(
        textColor: Colors.white,
        leading: SvgPicture.asset('assets/svgs/support.svg',width: 20,height: 20,
        ),
        title: const Text('Support',style: TextStyle(
          fontSize: 17,
        ),),
        onTap: () {
          // change app state...
          Navigator.pop(context); // close the drawer
        },

      ),
    ],
  ),
),
      body: SingleChildScrollView(
        padding:const EdgeInsets.only(top: 20),
        child:Container(
          width: MediaQuery.of(context).size.width,
          child:  Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.of(context).push(_createRoute(const AllButtons())); // with some animation
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context)=>AllButtons())
                // );  // Normal way

              },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      fixedSize: Size(MediaQuery.of(context).size.width/1.5, 40)
                  ),
                  child: const Text("Buttons",style: TextStyle(color: Colors.black),)
              ),
            const   SizedBox(height: 10,),
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

                  ),
                ) ,
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(_createRoute(const RowsColumns()));
              }, child: const Text('RowsColumns',)),
              const SizedBox(height: 10,),

              OutlinedButton(onPressed: (){
                Navigator.of(context).push(_createRoute(ListViewPractice()));
              }, child: const Text("ListView"),style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  fixedSize: Size(300, 40),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),),
SizedBox(height: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    fixedSize: Size(MediaQuery.of(context).size.width-50, 40)
                  ),
                  onPressed: (){}, child: Text('ChefMaster App')),
              SizedBox(height: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      fixedSize: Size(MediaQuery.of(context).size.width-50, 40)
                  ),
                  onPressed: (){
                    Navigator.of(context).push(_createRoute(Interests()));

                  }, child: Text('Interests'))


            ],
          ),
        ),
      ),
    );
  }
}
