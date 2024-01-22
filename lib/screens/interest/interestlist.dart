import 'package:flutter/material.dart';

class InterestLists extends StatefulWidget {
   InterestLists({super.key});


  @override
  State<InterestLists> createState() => _InterestListsState();
}

class _InterestListsState extends State<InterestLists> {

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


              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  ChoiceChip(label: Text('Hello'), selected: _selectedInterests.contains('Music'),
                  onSelected:(value)=>setState(() {
                    if(value){
                      _selectedInterests.add('Music');
                    }else{
                      _selectedInterests.remove('Music');
                    }
                  }) ,
                  )
                ],
              ),

              SizedBox(
                height:
                MediaQuery.of(context).size.height,
                child:  GridView.builder(
                  shrinkWrap: true,

                  itemCount: interests.length,
                  itemBuilder: (context,index){
                    return Container(
                      // height: 50,
                      margin:const EdgeInsets.all(4),
                      child:
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(25, 25, 25, 1),
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            // fixedSize:Size(MediaQuery.of(context).size.width,30)
                          ), onPressed: (){},
                          child: Wrap(
                            children: [
                              Row(
                                // mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    style: TextStyle(
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(171, 171, 171, 1)
                                    ),
                                    softWrap: true,

                                    maxLines: 3,
                                    interests[index],textAlign: TextAlign.center,)
                                ],
                              )



                            ],
                          )),


                    );


                  },
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                      childAspectRatio: 3.5
                  ) ,),

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
