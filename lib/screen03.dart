import 'package:flutter/material.dart';

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
          children: [
            //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Center(
                widthFactor: 2,
                child: Text('大一時期',style: TextStyle(fontSize: 22),),
              )],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 學好英文',style: TextStyle(fontSize: 18),),
                      Text('2. 組合語言',style: TextStyle(fontSize: 18),),
                      Text('3. 人際關係',style: TextStyle(fontSize: 18),),
                      Text('4. C語言',style: TextStyle(fontSize: 18),),
                      Text('5. 運動社團',style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Center(
                widthFactor: 2,
                child: Text('大二時期',style: TextStyle(fontSize: 22),),
              )],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 學好英文',style: TextStyle(fontSize: 18),),
                      Text('2. 考取多益',style: TextStyle(fontSize: 18),),
                      Text('3. Java語言',style: TextStyle(fontSize: 18),),
                      Text('4. 學好網路',style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Center(
                widthFactor: 2,
                child: Text('大三時期',style: TextStyle(fontSize: 22),),
              )],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 加強英文',style: TextStyle(fontSize: 18),),
                      Text('2. 學資料庫',style: TextStyle(fontSize: 18),),
                      Text('3. 學SQL語法',style: TextStyle(fontSize: 18),),
                      Text('4. 實務專題',style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Center(
                widthFactor: 2,
                child: Text('大四時期',style: TextStyle(fontSize: 22),),
              )],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 加強英文',style: TextStyle(fontSize: 18),),
                      Text('2. 準備考研',style: TextStyle(fontSize: 18),),
                      Text('3. 考取托福',style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
              ],),

          ],
        ),
      ),
    );
  }
}