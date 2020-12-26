import 'package:flutter/material.dart';
import 'package:instagram_ui/landing/status.dart';

import 'feeds.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List feeds = [
    {
      "username": "Insta name one",
      "feedImage": "assets/images/feed1.jpg",
      "isLiked": true,
      "isSaved": false,
      "status": true
    },
    {
      "username": "insta name two",
      "feedImage": "assets/images/feed2.jpg",
      "isLiked": false,
      "isSaved": false,
      "status": false
    },
    {
      "username": "Insta name three",
      "feedImage": "assets/images/feed3.jpg",
      "isLiked": true,
      "isSaved": false,
      "status": false
    },
    {
      "username": "insta name four",
      "feedImage": "assets/images/feed4.jpg",
      "isLiked": false,
      "isSaved": false,
      "status": false
    },
    {
      "username": "insta name five",
      "feedImage": "assets/images/feed5.jpg",
      "isLiked": false,
      "isSaved": false,
      "status": false
    },
    {
      "username": "insta name six",
      "feedImage": "assets/images/feed2.jpg",
      "isLiked": false,
      "isSaved": false,
      "status": false
    },
    {
      "username": "insta name six",
      "feedImage": "assets/images/feed3.jpg",
      "isLiked": false,
      "isSaved": false,
      "status": false
    },
    {
      "username": "insta name six",
      "feedImage": "assets/images/feed1.jpg",
      "isLiked": false,
      "isSaved": false,
      "status": false
    },
    {
      "username": "insta name six",
      "feedImage": "assets/images/feed5.jpg",
      "isLiked": false,
      "isSaved": false,
      "status": false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Status(feeds: feeds),
            Feeds(feeds: feeds)
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavBar(context),
    );
  }

  BottomNavigationBar buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(backgroundColor: Colors.black, items: [
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/home.png',
            color: Colors.white,
            height: 26,
            width: 26,
          ),
          title: Text('', style: TextStyle(height: 0))),
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/search.png',
            color: Colors.white,
            height: 26,
            width: 26,
          ),
          title: Text('', style: TextStyle(height: 0))),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline,
            size: 26,
          ),
          title: Text('', style: TextStyle(height: 0))),
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/heart.png',
            color: Colors.white,
            height: 26,
            width: 26,
          ),
          title: Text('', style: TextStyle(height: 0))),
      BottomNavigationBarItem(
          icon: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/feed1.jpg',
              fit: BoxFit.fitHeight,
              height: 26,
              width: 26,
            ),
          ),
          title: Text('', style: TextStyle(height: 0))),
    ]);
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black87,
      leading: Icon(
        Icons.photo_camera,
        color: Colors.white,
        size: 26,
      ),
      title: SizedBox(
        width: 150,
        child: Image.asset(
          'assets/images/insta.png',
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        Icon(
          Icons.live_tv,
          size: 26,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Image.asset(
            'assets/icons/send.png',
            color: Colors.white,
            height: 26,
            width: 26,
          ),
        ),
      ],
    );
  }
}
