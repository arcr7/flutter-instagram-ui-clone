import 'package:flutter/material.dart';

class Feeds extends StatelessWidget {
  const Feeds({
    Key key,
    @required this.feeds,
  }) : super(key: key);

  final List feeds;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: feeds.length,
      itemBuilder: (BuildContext context, int index) => Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      feeds[index]['feedImage'],
                      fit: BoxFit.fitHeight,
                      height: 26,
                      width: 26,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    feeds[index]['username'],
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            Image.asset(feeds[index]['feedImage']),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  feeds[index]['isLiked']
                      ? Icon(
                          Icons.favorite,
                          size: 26,
                          color: Colors.red,
                        )
                      : Image.asset(
                          'assets/icons/heart.png',
                          height: 26,
                          width: 26,
                          color: Colors.white,
                        ),

                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/icons/chat.png',
                    height: 26,
                    color: Colors.white,
                    width: 26,
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  Image.asset(
                    'assets/icons/send.png',
                    height: 26,
                    color: Colors.white,
                    width: 26,
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/icons/save.png',
                    height: 26,
                    color: Colors.white,
                    width: 26,
                  ),
                  // Image.asset('assets/images/feed1.jpg'),
                ],
              ),
            )
          ],
        ),
      ),
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 10),
    );
  }
}