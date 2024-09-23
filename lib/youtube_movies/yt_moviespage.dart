import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../main.dart';
import '../youtube_now/ytnblockBig.dart';
import '../ytmusic/musicloading.dart';
import '../news /loadingpagenews.dart';
import '../youtube_now/youtube_loading.dart';
import '../youtube_now/ytnblock.dart';
import 'yt_moviesloading.dart';


class YtMovies_page extends StatelessWidget {
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
              title: Text('Trending Movies',
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
                  var test = moviesdata[index];
                  return NewsTilebig(
                      imgUrl: test['video']["thumbnails"][0]['url'],
                      desc: test["video"]['viewCountText'],
                      title:test["video"]['title'],
                      content: test["video"]["lengthText"],
                      posturl: '-');
                },
                childCount:
                moviesdata.length, // Replace with the total number of items
              ),
            ),
          ],
        ),
      ),
    )

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

