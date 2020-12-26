import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({
    Key key,
    @required this.feeds,
  }) : super(key: key);

  final List feeds;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SizedBox(
        height: 70,
        child: ListView.separated(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: feeds.length,
          itemBuilder: (BuildContext context, int index) =>
              SingleChildScrollView(
            child: Container(
              height: 70,
              width: 70,
              child: Container(
                padding: EdgeInsets.all(2.5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    feeds[index]['feedImage'],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(245, 133, 41, 1),
                    Color.fromRGBO(254, 218, 119, 1),
                    Color.fromRGBO(221, 42, 123, 1),
                    Color.fromRGBO(129, 52, 175, 1),
                    Color.fromRGBO(81, 91, 212, 1),
                  ],
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: 10),
        ),
      ),
    );
  }
}