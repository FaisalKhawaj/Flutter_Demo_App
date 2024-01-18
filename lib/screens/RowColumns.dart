import 'package:flutter/material.dart';

class RowsColumns extends StatefulWidget {
  const RowsColumns({super.key});

  @override
  State<RowsColumns> createState() => _RowsColumnsState();
}

class _RowsColumnsState extends State<RowsColumns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        actions: [
IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(

        child:Container(

          // color: Colors.red,
          height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          padding:
          EdgeInsets.symmetric(vertical: 10),
          child:
Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children:[
  Container(
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.mail)),
            Text('khawajfaial08@gmail.com')

          ],),


          Column(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
            Text('03321588981')

          ],),


          Column(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
            Text('Lahore')

          ],),
        ],)
  ),
    SizedBox(height: 20,),
    Container(child: Row(
  children: [
    IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
      IconButton(onPressed: (){}, icon: Icon(Icons.mail)),
    IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
  ],
),),
    SizedBox(height: 20,),
    Container(child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
    IconButton(onPressed: (){}, icon: Icon(Icons.mail)),
    IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
    ],
    )),
SizedBox(height: 20,),
    Container(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
        IconButton(onPressed: (){}, icon: Icon(Icons.mail)),
        IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
      ],
    ))
]
),




        )
      ),
    );
  }
}
