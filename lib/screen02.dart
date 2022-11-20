import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text("學習歷程",
                  style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  )),
            ),

            Padding(padding: EdgeInsets.fromLTRB(0, 30, 250, 15),
              child: Text("高中歷程:",
                  style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  )),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Image.asset('S2_1.png'),
              height: 150,
              width: 350,
            ),
            Container(
              child: Image.asset('S2_2.png'),
              height: 150,
              width: 350,
            ),
            Container(
              child: Image.asset('S2_3.png'),
              height: 220,
              width: 350,
            ),

          ],
        ),
      ),
    );
  }
}