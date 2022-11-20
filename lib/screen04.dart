import 'package:flutter/material.dart';

class screen4 extends StatelessWidget {

  final String s4 =
      "       在高職三年實習的過程中，我對程式設計愈來愈有興趣，不過也漸漸地體悟到自己對程式這塊領域的不足，因此我想在本科系中提升自己的程式能力，"
      "另外我也對本科系的Linux系統、動畫程式設計、VR、AI人工智慧等等產生了好奇心，因此資訊工程系一定是我最好的選擇，家人們也非常支持我讀本校本系，高科大不管是交通、"
      "內部環境或是師資都令我感到非常滿意，透過學校團體拜訪貴校校園使我決定了心目中的首選。";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text("就讀動機",
                  style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  )),
            ),

            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amberAccent, width: 5),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ BoxShadow(color: Colors.white,
                ),
                ],),
              child: Text(s4,
                style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}