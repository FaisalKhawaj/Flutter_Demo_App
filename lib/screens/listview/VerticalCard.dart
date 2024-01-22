import'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({super.key, required this.imageUrl});

  final String imageUrl;


  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        margin:const EdgeInsets.only(bottom: 10),
        decoration:const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black,// Color of the shadow
              spreadRadius: 0.2,  // Spread radius
              blurRadius: 0.2,  // Blur radius
              offset: Offset(0.2, 0.2),  // Offset in x and y directions
            ),
          ],
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(imageUrl,
            width: MediaQuery.of(context).size.width,
            height: 200,
            fit: BoxFit.cover,
          ),
        )
    );
  }
}
