import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewPractice extends StatelessWidget {
  ListViewPractice({super.key});


List<String>  products = ["Bed",'Sofa','Chair','Aaaa','Bedroommm','DD','EEEEE','ZZZZ'];
List <String> productsList=['https://picsum.photos/200','https://picsum.photos/id/237/200/300','https://picsum.photos/200/300?grayscale','https://fastly.picsum.photos/id/1/5000/3333.jpg?hmac=Asv2DU3rA_5D1xSe22xZK47WEAN0wjWeFOhzd13ujW4','https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68','https://fastly.picsum.photos/id/20/3670/2462.jpg?hmac=CmQ0ln-k5ZqkdtLvVO23LjVAEabZQx2wOaT4pyeG10I'];

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
             Container(
               height: 210,
               color: Colors.red,
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

                       child: Column(
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.only( topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                             child:  Image.network('https://picsum.photos/200/300',
                               width: MediaQuery.of(context).size.width,
                               height: 120,
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
                 }),),
            Container(
              child:  ListView.builder(
                itemCount: productsList.length,
                shrinkWrap: true,
                physics: ScrollPhysics(parent: null),
                // scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  return Container(
                      width: MediaQuery.of(context).size.width-20,
                      height: 300,
                      margin:const EdgeInsets.symmetric( vertical: 10),
                      decoration:const BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red,// Color of the shadow
                            spreadRadius: 1,  // Spread radius
                            blurRadius: 1,  // Blur radius
                            offset: Offset(1, 1),  // Offset in x and y directions
                          ),
                        ],
                        color: Colors.orange,
                      ),

                      child: ClipRRect(child: Image.network(productsList[index],
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      )
                  );
                }) ,)

            ],
          ),





    );
  }
}
