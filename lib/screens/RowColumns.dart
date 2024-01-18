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
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.orange,
            ),
            Column(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            Text('Row SpaceBetween'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('Row SpaceEvenly'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('Row SpaceAround'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
