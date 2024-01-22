import 'package:flutter/material.dart';

class Interests extends StatefulWidget {
  Interests({super.key});


  @override
  State<Interests> createState() => _InterestListsState();
}

class _InterestListsState extends State<Interests> {

  final _selectedInterests=<String>[];
  List<String>  interests=['Music','Films and Media','Sports & Fitness','Arts','Fashion','Travel & Outdoor','Home & Lifestyle','Education','Gaming','Health','A','Sports & Fitness Sports & Fitness','C','D','E','F',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        // leadingWidth: 100,
        backgroundColor: Color.fromRGBO(0, 0, 0, 1) ,
        foregroundColor: Colors.white,
        leading:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Padding(padding: EdgeInsets.only(left: 10),
              child: IconButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(40,40),
                      foregroundColor: Colors.white,
                      backgroundColor:const Color.fromRGBO(55, 19, 78, 1) ,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  icon: const Icon(Icons.chevron_left)) ,
            ),

          ],
        ),

        // backgroundColor: Colof.,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              const Text('Tell us your interests',style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10,),
              const Text('Select your interests that you love, we will curate the best videos for your feed',style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(171, 171, 171, 1)
              ),),

              SizedBox(height: 28,),


           Container(
             child:  Wrap(
               spacing: 10,
               runAlignment: WrapAlignment.center,
               runSpacing: 10,
               children: List.generate(interests.length, (index) {
              return   ChoiceChip(
                checkmarkColor:Colors.white,
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 20),
                disabledColor: Colors.pink,
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                selectedColor: Color.fromRGBO(119, 40, 168, 1),
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                backgroundColor: Color.fromRGBO(25, 25, 25,1),
                label: Text(interests[index]), selected: _selectedInterests.contains(interests[index]),
                onSelected:(value)=>setState(() {
                  if(value){
                    _selectedInterests.add(interests[index]);
                  }else{
                    _selectedInterests.remove(interests[index]);
                  }
                }) ,
              );
               }),
             ),
           )












            ],
          )
          ,
        ),
      ),
      // appBar: ,
    );
  }
}
