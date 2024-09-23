import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../main.dart';
import 'ytmusic/musicloading.dart';
import '../youtube_movies/yt_moviesloading.dart';
import '../youtube_now/youtube_loading.dart';

late var newsbody;

class trying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text('catch trend'),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      icon: Icon(Icons.more_vert_rounded),
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(35),
                          // backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          elevation: 100,
                          backgroundColor: Colors.grey,
                          barrierColor: Colors.black54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(34)),
                          context: context,
                          builder: (BuildContext context) {
                            return Column(
                              children: [
                                Divider(
                                  thickness: 8,
                                  indent: 150,
                                  endIndent: 150,
                                  color: Colors.black,
                                ),
                                Container(
                                  height: 440,
                                  child: Center(
                                      child: RotatedBox(
                                    quarterTurns: 3,
                                    child: ListWheelScrollView(
                                      squeeze: 0.85,
                                      diameterRatio: 1.4,
                                      itemExtent: 150,
                                      children: [
                                        Container(
                                          width: 230,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ytnloading()),
                                              );
                                            },
                                            child: RotatedBox(
                                              quarterTurns: 1,
                                              child: Container(
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons.newspaper_rounded,
                                                      size: 120,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      'News',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                elevation: 30,
                                                shadowColor: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20))),
                                                backgroundColor:
                                                    Color(0xff2CD3E1)),
                                          ),
                                        ),
                                        Container(
                                          width: 230,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ytnloading()),
                                              );
                                            },
                                            child: RotatedBox(
                                              quarterTurns: 1,
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.trending_up_rounded,
                                                    size: 120,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    'Videos',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 30,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                elevation: 30,
                                                shadowColor: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20))),
                                                backgroundColor:
                                                    Color(0xff2CD3E1)),
                                          ),
                                        ),
                                        Container(
                                          width: 230,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ytnloading()),
                                              );
                                            },
                                            child: RotatedBox(
                                              quarterTurns: 1,
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.movie_creation,
                                                    size: 120,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    'Movies',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 30,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                elevation: 30,
                                                shadowColor: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20))),
                                                backgroundColor:
                                                    Color(0xff2CD3E1)),
                                          ),
                                        ),
                                        Container(
                                          width: 230,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ytnloading()),
                                              );
                                            },
                                            child: RotatedBox(
                                              quarterTurns: 1,
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.music_note_rounded,
                                                    color: Colors.white,
                                                    size: 120,
                                                  ),
                                                  Text(
                                                    'Music',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 30,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                elevation: 30,
                                                shadowColor: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20))),
                                                backgroundColor:
                                                    Color(0xff2CD3E1)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            body: Center(
              child: Text('hello'),
            ))

        // body: ListView.builder(
        //   itemCount: newsdata.length,
        //   itemBuilder: (BuildContext context, int index)
        //    {
        //      var test = newsdata[index];
        //      print(test["Image"]);
        //      print(newsdata.length);
        //      print(newsdata[index]);
        //     NewsTile(
        //       imgUrl: test["Image"],
        //       desc:test["Description"],
        //       title:test["Title"],
        //       content: test["Summary"],
        //       posturl: test["Url"]
        //     );
        //   },
        // ),
        ;
  }
}
