import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class screen1 extends StatelessWidget {
  final player = AudioPlayer();

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