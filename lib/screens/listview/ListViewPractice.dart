import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewPractice extends StatelessWidget {
  ListViewPractice({super.key});


List<String>  products = ["Bed",'Sofa','Chair','Aaaa','Bedroommm','DD','EEEEE','ZZZZ'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView",
          style: TextStyle(),
        ),
        centerTitle: false,
        // leading: ,
      ),
      body: Column(
            children: [
             Container(height: 210,
               // color: Colors.red,
               padding:const EdgeInsets.symmetric(horizontal: 10),
               child:  ListView.builder(
                 itemCount: products.length,
                 shrinkWrap: false,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context,index){
                   return Container(
                       width: MediaQuery.of(context).size.width/2,
                       margin:const EdgeInsets.only(right: 10),
                       decoration:const BoxDecoration(
                         shape: BoxShape.rectangle,
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                           boxShadow: [
                       BoxShadow(
                       color: Colors.white, // Color of the shadow
                     spreadRadius: 1,  // Spread radius
                     blurRadius: 1,  // Blur radius
                     offset: Offset(1, 1),  // Offset in x and y directions
                   ),
                           ],

                         color: Colors.white,
                       ),
                       // height: 210,
                       child: Column(
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.only( topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                             child:  Image.network('https://picsum.photos/200/300',
                               width: MediaQuery.of(context).size.width,
                               height: 100,
                               fit: BoxFit.cover,
                             ),
                           ),
    Container(
       margin:const EdgeInsets.symmetric(vertical: 10) ,
        child:
    Column(
      children: [
       const Text('Nike',style: TextStyle(fontFamily: 'Poppins',fontSize: 20, fontWeight: FontWeight.w600),),
      const Text('\$200',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300),),
      ],
    )
    )
                         ],
                       )
                   );
                 }),)
              // ListView.builder(
              //     itemCount: products.length,
              //     shrinkWrap: true,
              //     itemBuilder: (context,index){
              //       return Column(
              //         children: [
              //           ListTile(
              //             leading:CircleAvatar(child:
              //             Text(products[index][0])
              //               ,),
              //             title: Text(products[index],style: TextStyle(
              //                 fontSize: 18,
              //                 fontFamily: 'Comfortaa',
              //                 fontWeight: FontWeight.w600
              //             ),),
              //             trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete),),
              //           ),
              //           Divider(color: Colors.brown,thickness: 0.2,)
              //         ],
              //       );
              //     })
            ],
          ),





    );
  }
}
