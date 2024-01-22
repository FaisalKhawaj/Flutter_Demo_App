import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:testapp/screens/listview/VerticalCard.dart';

class ListViewPractice extends StatelessWidget {
  ListViewPractice({super.key});


List<String>  products = ["Bed",'Sofa','Chair','Aaaa','Bedroommm','DD','EEEEE','ZZZZ'];
List <String> productsList=['https://picsum.photos/200','https://picsum.photos/id/237/200/300','https://picsum.photos/200/300?grayscale','https://fastly.picsum.photos/id/1/5000/3333.jpg?hmac=Asv2DU3rA_5D1xSe22xZK47WEAN0wjWeFOhzd13ujW4','https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68','https://fastly.picsum.photos/id/20/3670/2462.jpg?hmac=CmQ0ln-k5ZqkdtLvVO23LjVAEabZQx2wOaT4pyeG10I'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "ListView",
          style: TextStyle(),
        ),
        centerTitle: false,
        // leading: ,
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 210,
              color: Colors.white,
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child:  ListView.builder(
                  itemCount: products.length,
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Container(
                        width: MediaQuery.of(context).size.width/2,
                        margin:const EdgeInsets.only(top: 4, left:4,right: 5,bottom: 4),
                        decoration:const BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              // Color of the shadow
                              // spreadRadius: 0.5,  // Spread radius
                              blurRadius: 1,  // Blur radius
                              // offset: Offset(2, 2),  // Offset in x and y directions
                            ),
                          ],
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
                                width: MediaQuery.of(context).size.width,
                                padding:const EdgeInsets.symmetric(horizontal: 10) ,
                                margin:const EdgeInsets.symmetric(vertical: 10) ,
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
            child: Text('Horizontal List With Simple Row',textAlign: TextAlign.left,),
            ),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:
                 Container(height: 200,width: 200,
                   decoration: BoxDecoration(
                     shape: BoxShape.rectangle,
                       color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                   ),
                  )),
                 Padding(
                   padding: const EdgeInsets.symmetric( horizontal: 10),
                   child: Container(height: 200,width: 200,
                   decoration: const BoxDecoration(
                       color: Colors.orange,
                       shape: BoxShape.rectangle,
                       borderRadius: BorderRadius.all(Radius.circular(10))
                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric( horizontal: 10),
                   child: Container(
                     height: 200,
                     width: 200,
decoration: const BoxDecoration(
  shape: BoxShape.rectangle,
  color: Colors.pink,
  borderRadius: BorderRadius.all(Radius.circular(10)),
),

                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric( horizontal: 10),
                   child: Container(
                       height: 200,
                       width: 200,
                       decoration: BoxDecoration(
                           color: Colors.purple.shade200,
                           shape: BoxShape.rectangle,
                          borderRadius:const BorderRadius.all(Radius.circular(10))
                   )
                   ),
                   ),
               ],
             ),
           ),
            Container(
              height: 50,
              alignment: Alignment.center,
              child: Text('Vertical Card List',style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 20
              ),),),
            Container(
              margin:EdgeInsets.symmetric(horizontal: 10),
              // width: ,
              child:  ListView.builder(
                  itemCount: productsList.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(parent: null),
                  // scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                    return VerticalCard(imageUrl: productsList[index]);
                  }) ,)

          ],
        ),
      )
    );
  }
}
