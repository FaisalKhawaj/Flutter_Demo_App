import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,

        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

// Center => aligns its child widget to the center of available space of screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(15.0),
          // alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0.5, 0.5),
                  blurRadius: 0.1,
                )
              ]),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

             mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text('Hello Developer , I am Faisal Khawaj',
              //     textAlign: TextAlign.center,
              //     style: const TextStyle(
              //         color: Colors.black,
              //         fontSize: 12,
              //         fontFamily: 'Poppins',
              //         fontStyle: FontStyle.normal)),
              // SizedBox(
              //   height: 10.0,
              // ),
              // Text('I am Developer',
              //     style: const TextStyle(
              //         color: Colors.black,
              //         fontSize: 20,
              //         fontFamily: 'Poppins',
              //         fontStyle: FontStyle.italic
              //         // fontWeight: FontWeight.bold
              //         )),
              SizedBox(
                height: 10.0,
              ),
              const Text.rich(TextSpan(
                text: "",
                children: <TextSpan>[
                  TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.w300)),
                  TextSpan(
                      text: "Signup",
                      style: TextStyle(
                          color: Colors.amber,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold))
                ],
              )),

              TextButton(onPressed: (){
                print("Hello");

              },style: TextButton.styleFrom(

                // backgroundColor: Colors.grey,
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                side: BorderSide(color: Colors.grey)
              ), child: Text('Text Button,Click me')),
ElevatedButton(onPressed: (){print('ElevatedButton');},
    style: ElevatedButton.styleFrom(
      side: BorderSide(color: Colors.orange)
    ),
    child: Text('ElevatedButton')),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,child: ElevatedButton(onPressed: (){
                print('Elevated button');
              },
                  style: ElevatedButton.styleFrom(
                      elevation: 1,
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10))
                  ), child: Text('Elevated Button',style: TextStyle(
                    // color: Colors.black
                  )

                    ,)),)
             ,
              SizedBox(height: 10,),
              // OutlinedButton( onPressed:(){
              //   print('Outllined button');
              // } ,
              //
              //     style: OutlinedButton.styleFrom(
              //
              //       fixedSize: Size(180, 40),
              //       side: BorderSide(color: Colors.blue),
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              //
              //     ),
              //     child: Text('Outlined Button')),
              // SizedBox(height: 10,),
              // Image.asset('assets/images/unknown.png',),
              ClipRRect(borderRadius:BorderRadius.circular(50.0), child: Image.network('https://picsum.photos/200/300',alignment: Alignment.center,
                width: 50,
                height: 50,
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.cover,
              )),
             SizedBox(height: 10,),
              Image(image: AssetImage('assets/images/unknown.png'),fit: BoxFit.cover,
              height: 100,
                width: 100,
              ),
              SizedBox(height: 30,),
              Text('RowsColumns',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,
              fontFamily:'Poppins'
              ),),
              SizedBox(height: 20,),
                Row(children:<Widget> [
                Text('Row1 '),
                  Text('Row1 '),
                  Text('Row1 '),
              ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end
                ,mainAxisAlignment: MainAxisAlignment.start
                , children: [
                Container(height: 40,width: 50,color: Colors.black,),
                Container(height: 40,width: 50,color: Colors.orange,),
                Container(height: 40,width: 50,color: Colors.yellow,)
              ],),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end
                ,mainAxisAlignment: MainAxisAlignment.start
                , children: [
                Container(height: 40,width: 50,color: Colors.black,),
                Container(height: 40,width: 50,color: Colors.orange,),
                Container(height: 40,width: 50,color: Colors.yellow,)
              ],),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.center
              //   ,mainAxisAlignment: MainAxisAlignment.start
              //   , children: [
              //   Container(height: 40,width: 50,color: Colors.black,),
              //   Container(height: 40,width: 50,color: Colors.orange,),
              //   Container(height: 40,width: 50,color: Colors.yellow,)
              // ],),
              // SizedBox(height: 10,),
              // Row(
              //   // crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //   Container(height: 40,width: 50,color: Colors.red,),
              //   Container(height: 40,width: 50,color: Colors.orange,),
              //   Container(height: 40,width: 50,color: Colors.yellow,)
              // ],),

              // Row(
              //   // crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(height: 20,width: 20,color: Colors.red,),
              //     Container(height: 20,width: 20,color: Colors.orange,),
              //     Container(height: 20,width: 20,color: Colors.yellow,)
              //   ],),
              // Row(
              //   // crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Container(height: 20
              //       ,width: 20,color: Colors.red,),
              //     Container(height: 20,width: 20,color: Colors.orange,),
              //     Container(height: 20,width: 0,color: Colors.yellow,)
              //   ],),

              // Row(
              //   // crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(height: 20,width: 20,color: Colors.red,),
              //     Container(height: 20,width: 20,color: Colors.orange,),
              //     Container(height: 20,width: 20,color: Colors.yellow,)
              //   ],),
              // Row(
              //   // crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(height: 20,width: 20,color: Colors.red,),
              //     Container(height: 20,width: 20,color: Colors.orange,),
              //     Container(height: 20,width: 20,color: Colors.yellow,)
              //   ],),


            ],
          ),
        ),
      ),

      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     //
      //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
      //     // action in the IDE, or press "p" in the console), to see the
      //     // wireframe for each widget.
      //
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
