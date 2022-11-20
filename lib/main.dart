import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final player = AudioPlayer();
  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;
  int _previousindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Autobiography',style: TextStyle(fontFamily: "Lobster",fontSize: 30),),backgroundColor: Colors.teal,),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.accessibility),
              label: 'Personality',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: 'Process',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.account_tree),
              label: 'Plan',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.question_mark),
              label: 'Intent',
            ),
          ],

          onTap: (index) { setState(() {
            _previousindex=_currentindex;
            _currentindex=index;
            if (index!=0) {
              player.stop();
            }
          });
          },
        ),
      ),
    );
  }
}

//--------------------------------------------------------------------screen1----------------------------------------
class screen1 extends StatelessWidget {

  final String s1 = '一、家庭背景\n'
      '       爸爸是中鋼的軟體工程師，哥哥自己開一間公司以網頁設計為業，因此我的家人都很支持我走資訊這條路。\n\n'
      '二、個人特質\n'
      '       我從小就有一顆天真的好奇心，第一次接觸電腦與手機時我的心中就產生了許多的疑問，電腦內部是由甚麼構成的？螢幕如何發光與多點觸控？APP要怎麼開發等等，國中時期也有上網查了一些相關的資料，'
      '為了要更深入的探討當中的奧秘，於是我選擇了高職資訊科。如今我非常的心滿意足，完全不後悔我選擇此科系，但是我又對新的東西感到好奇，像是python、網頁設計以及動畫程式設計等，'
      '因此我有買了幾本相關的書來充實我自己，從此我的好奇心成為了我能夠自主學習的動力。\n\n'
      '三、興趣專長\n'
      '       高職的寒暑假，爸爸有教我一些C++程式語言，配合學校教的arduino加深我的印象，在專題上也頻繁使用過C++來撰寫程式碼。爸爸也會教我3D動畫設計，'
      '因為看到一些範本像是放大鏡模擬、玻璃碎掉、爆炸效果等3D動畫使我對這個部份產生了興趣。小學時期，數學本來是我最討厭且最不拿手的科目，但是到了國中後，'
      '我的班導同時也是數學老師啟發了我對數學的熱忱，一題又一題累積出來的經驗與成就感使我對數學產生了熱愛，到了高職，我的數學能力不斷的在進步(參考下圖)，'
      '高三參加了AMC12的數學測驗以及大一微積分先修課程，因此比起其他科目來講，數學是我最喜愛的科目。';
  @override
  Widget build(BuildContext context) {

    if (player.state != "playing"){
      player.play(AssetSource("159.mp3"));
    }
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text("自我介紹",
                  style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                    )),
            ),
            Container(
              child: Image.asset('S1.jpg'),
              decoration: BoxDecoration(
                border:Border.all(color: Colors.black, width: 2),
              ),
              height: 200,
              width: 145,
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amberAccent, width: 5),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ BoxShadow(color: Colors.white,
                    ),
                ],),
              child: Text(s1,
                style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
//--------------------------------------------------------------------screen2----------------------------------------
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
//--------------------------------------------------------------------screen3----------------------------------------
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
//-----------------------------------------------------------------------------screen4
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