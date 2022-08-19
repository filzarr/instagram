import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.white.withOpacity(0.3),
              width: 0.09,
            ),
          )),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ).copyWith(right: 0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 16,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "username",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          width: double.infinity,
          child: Image.network(
            'https://bun.filedit.ch/gOACKvLjBggViQmzqnRu.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.heart,
                size: 25,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.chat_bubble,
                size: 25,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.paperplane,
                size: 25,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.bookmark,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "1.200 likes",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 6),
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        children: [
                      TextSpan(
                        text: "username",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "   description of image")
                    ])),
              ),
              Container(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  "View All 80 coments",
                  style: TextStyle(
                    color: Color.fromARGB(157, 191, 191, 191),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 12,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Add a comment...",
                          style: TextStyle(
                            color: Color.fromARGB(157, 191, 191, 191),
                          )),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8, bottom: 10),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "5 minutes ago·",
                            style: TextStyle(
                                color: Color.fromARGB(157, 191, 191, 191),
                                fontSize: 10))),
                    RichText(
                      text: TextSpan(
                        text: " See translation",
                        style: TextStyle(
                            color: Color.fromARGB(255, 191, 191, 191),
                            fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          title: Text(
            "Instagram",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.plus_app)),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart)),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.paperplane)),
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.only(
                top: 5,
                left: 6,
              ),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 0.1,
                ),
              )),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      story(),
                      story(),
                      story(),
                      story(),
                      story(),
                      story(),
                      story(),
                      story(),
                      story(),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              // padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  column,
                  column,
                  column,
                  column,
                ],
              )),
            ),
          ],
        ),
        bottomNavigationBar: CupertinoTabBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
              Icons.home_filled,
              color: Colors.white,
            )),
            BottomNavigationBarItem(
                icon: Icon(
              Icons.search,
              color: Colors.white,
            )),
            BottomNavigationBarItem(
                icon: Icon(
              Icons.add_circle,
              color: Colors.white,
            )),
            BottomNavigationBarItem(
                icon: Icon(
              CupertinoIcons.heart,
              color: Colors.white,
            )),
            BottomNavigationBarItem(
                icon: Icon(
              Icons.person,
              color: Colors.white,
            )),
          ],
        ),
      ),
    );
  }

  Padding story() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.green,
                border: Border.all(color: Colors.blueAccent, width: 5),
              ),
              height: 60,
              width: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                height: 15,
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "username",
                          style: TextStyle(fontSize: 11),
                        ),
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Spacer spasi() {
    return Spacer(
      flex: 5,
    );
  }
}
