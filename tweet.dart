import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tweet extends StatelessWidget {
  final String avatar_url;
  final String postText;
  const Tweet({super.key, required this.avatar_url, required this.postText});

  @override
  Widget build(BuildContext context) {
    return tweet();
  }

  Widget tweet() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tweetAvatar(),
        tweetBody(),
      ],
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tweetHeader(),
          if (avatar_url == "")
            tweetText(postText)
          else if (postText == "")
            tweetIMGONLY()
          else
            tweetIMG(postText),
          tweetButton(),
        ],
      ),
    );
  }

  Widget tweetText(String text) {
    return Text(
      text,
      style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
    );
  }

  Widget tweetIMG(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Image(
          width: 400.0,
          height: 400.0,
          image: NetworkImage(avatar_url),
        ),
      ],
    );
  }

  Widget tweetIMGONLY() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: 400.0,
          height: 400.0,
          image: NetworkImage(avatar_url),
        ),
      ],
    );
  }

  Widget tweetButton() {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 45.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tweetIconButton(FontAwesomeIcons.message, "22k"),
          tweetIconButton(FontAwesomeIcons.retweet, "22k"),
          tweetIconButton(FontAwesomeIcons.heart, "22k"),
          tweetIconButton(FontAwesomeIcons.share, ""),
        ],
      ),
    );
  }

  Widget tweetIconButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 18.0,
        ),
        Container(
          margin: const EdgeInsets.only(left: 6.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
            ),
          ),
        )
      ],
    );
  }

  Widget tweetHeader() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5.0),
          child: const Text(
            "Pongsathorn",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        const Text(
          "@Mike 10s",
          style: TextStyle(color: Colors.grey),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.angleDown,
            size: 14.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget tweetAvatar() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://scontent.fbkk2-3.fna.fbcdn.net/v/t1.6435-9/54002563_2097775796980863_7048401049131941888_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEd3S4c5xmPV7DhJnFLGxZMGKZwUwY-jmsYpnBTBj6Oa9hLT3KjRI9v9_MnKaiKP35f5M2aMSbfuDRGxzQEtWnZ&_nc_ohc=yL1INbHu1u4AX9Q6MX1&_nc_ht=scontent.fbkk2-3.fna&oh=00_AfBH41DTyNr2nFK7c4ZPESJ8wuJNPtaiwC5UI6FbG_ReDQ&oe=63A786D3'),
      ),
    );
  }
}
