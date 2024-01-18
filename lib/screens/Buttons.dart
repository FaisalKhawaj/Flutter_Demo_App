import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                  style: TextButton.styleFrom(
                      // backgroundColor: Colors.amber,
                      foregroundColor: Colors.black),
                  onPressed: () {},
                  child: const Text('TextButton')),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // fixedSize:Size(250, 50)
                ),
                child: const Text('Elevated Button With style'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Circle Border Elevated Button',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Center(
                child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(shape: const CircleBorder()),
                    child: const Icon(Icons.access_time))),
            const Text('TextButton'),
            Center(
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(shape: const CircleBorder()),
                    child: const Icon(Icons.access_time))),
            const Text('OutlinedButton'),
            Center(
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: const CircleBorder(),
                        side: const BorderSide(width: 1, color: Colors.black)),
                    child: const Icon(Icons.access_time))),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.addressCard,
                  color: Colors.orange,
                )),
            const Text(
              'IconButton',
              textAlign: TextAlign.center,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.alt_route_outlined),
              iconSize: 30,
              color: Colors.grey,
            ),
            Center(
                child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.green,
                fixedSize: const Size(65, 65),
                padding: const EdgeInsets.all(10),
              ),
              child: const Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  )),
            )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 40),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(color: Colors.red)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.apple_rounded),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Login With Apple',
                            style: TextStyle(color: Colors.white)))
                  ],
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 40),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.apple_rounded),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Login With Apple',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
