
import 'package:flutter/material.dart';

class ListViewPractice extends StatelessWidget {
  const ListViewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView",style: TextStyle(

        ),),
        centerTitle: false,
        // leading: ,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child:const Column(
              children: [


              ],
            ),
          ),
        ),
      ),
    );
  }
}
