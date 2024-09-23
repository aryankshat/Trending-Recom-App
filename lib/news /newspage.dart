import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../main.dart';
import '../ytmusic/musicloading.dart';
import '../youtube_movies/yt_moviesloading.dart';
import '../youtube_now/youtube_loading.dart';
import 'newsblock.dart';
import 'loadingpagenews.dart';

late var newsbody;



class newspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Color(0xff323246),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Color(0XFF323246),
              automaticallyImplyLeading: false,

              title: Text('Trending News',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      icon: Icon(Icons.more_vert_rounded,
                        color: Colors.white,
                        size: 35,),
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(35),
                          // backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          elevation: 100,
                          backgroundColor: Color(0xff20212E),
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
                                                    Color(0xffF3B3C6)),
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
                                                    Color(0xff7569D1)),
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
                                                    Color(0xffF8D68B)),
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
                                                    Color(0xff96C08B)),
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
            // SliverAppBar(title: Text('Trending News'),
            //   floating: true,
            //   automaticallyImplyLeading: false,),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  newsbody = newsdata[index];
                  return newstile(
                      imgUrl: newsbody["Image"],
                      desc: newsbody["Description"],
                      title: newsbody["Title"],
                      content: newsbody["Summary"],
                      posturl: newsbody["Url"]);
                },
                childCount:
                newsdata.length, // Replace with the total number of items
              ),
            ),
          ],
        ),
      ),
    )
        ;
  }
}
