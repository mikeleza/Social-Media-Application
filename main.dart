import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetlist = [];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fbkk2-3.fna.fbcdn.net/v/t1.6435-9/54002563_2097775796980863_7048401049131941888_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEd3S4c5xmPV7DhJnFLGxZMGKZwUwY-jmsYpnBTBj6Oa9hLT3KjRI9v9_MnKaiKP35f5M2aMSbfuDRGxzQEtWnZ&_nc_ohc=yL1INbHu1u4AX9Q6MX1&_nc_ht=scontent.fbkk2-3.fna&oh=00_AfBH41DTyNr2nFK7c4ZPESJ8wuJNPtaiwC5UI6FbG_ReDQ&oe=63A786D3'),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 12, 12, 12),
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(
              Icons.home,
              Colors.blue,
            ),
            buildIconButton(
              Icons.search_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.notifications_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.email_outlined,
              Colors.grey,
            ),
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            tweetlist.insert(
              0,
              TWIT(count),
            );
            count++;
            if (count == 11) count = 0;
          });
        },
      ),
    );
  }

  Widget TWIT(n) {
    List<int> i = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    List<String> url = [], text = [];
    switch (i[n]) {
      case 0:
        url.add("");
        text.add("ผมนาย พงศธร บางเหลือง รหัส 1630902243");
        break;
      case 1:
        url.add(
            'https://scontent.fbkk2-3.fna.fbcdn.net/v/t1.6435-9/54002563_2097775796980863_7048401049131941888_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEd3S4c5xmPV7DhJnFLGxZMGKZwUwY-jmsYpnBTBj6Oa9hLT3KjRI9v9_MnKaiKP35f5M2aMSbfuDRGxzQEtWnZ&_nc_ohc=yL1INbHu1u4AX9Q6MX1&_nc_ht=scontent.fbkk2-3.fna&oh=00_AfBH41DTyNr2nFK7c4ZPESJ8wuJNPtaiwC5UI6FbG_ReDQ&oe=63A786D3');
        text.add("");
        break;
      case 2:
        url.add(
            'https://www.bu.ac.th/uploads/about/history/timeline/thumb/20171208155233_UENLZ4K537PVURA_B1FRF5OCENZQDHG.jpg');
        text.add(
            "ใช้แล้ว นั้นคือผมเอง และผมกำลังศึกษาอยู่ที่ \nมหาวิทยาลัยกรุงเทพ : Bangkok University");
        break;
      case 3:
        url.add('https://i.ytimg.com/vi/NhWrLKRfFBY/maxresdefault.jpg');
        text.add(
            "อยู่คณะ วิศวกรรมคอมพิวเตอร์ และ หุ่นยนต์ : Computer Engineering and Robotics");
        break;
      case 4:
        url.add("");
        text.add(
            "ต่อมา ผมจะพาไปดูว่า สาขาวิศวกรรมคอมพิวเตอร์ และ หุ่นยนต์ นั้นทำอะไรกันบ้าง");
        break;
      case 5:
        url.add(
            "https://www.bu.ac.th/uploads/gallery/20181012090613_aNFKMec6giDb0HB_o43yIxOeznCMoTz.jpg");
        text.add("");
        break;
      case 6:
        url.add(
            "https://www.bu.ac.th/uploads/gallery/20181012090612_0TzZzrj15xVH3pn_nsaDtgw1ynd0hNM.jpg");
        text.add("");
        break;
      case 7:
        url.add("https://iili.io/H3v1SEl.png");
        text.add("ต่อมาผมจะพาไปดู Project ที่ผมจะทำปีนี้โดยเริ่มจากภาพรวมก่อน");
        break;
      case 8:
        url.add("https://iili.io/H3vVPKx.png");
        text.add("ต่อมาเป็นส่วนของ หลักการทำงาน Hardware แบบ คล่าว ๆ ");
        break;
      case 9:
        url.add("https://iili.io/H3vhilf.png");
        text.add("ในส่วนของผมนั้น จะทำในเรื่องของ Database");
        break;
      case 10:
        url.add("https://iili.io/H3vSWoQ.png");
        text.add(
            "ในหน้าสุดท้ายนี้ จะเป็นรูปดราฟของตัวโปรเจคเวอร์ชั่นสุดท้าย ว่าหน้าต่าควรที่จะไปทางไหน");
        break;
    }
    return Tweet(
      avatar_url: url[0],
      postText: text[0],
    );
  }

  Widget listOfTweets() {
    return Container(
      color: Color.fromARGB(255, 24, 24, 24),
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetlist[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 10,
              ),
          itemCount: tweetlist.length),
    );
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
