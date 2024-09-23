import 'package:flutter/material.dart';
import 'package:trendingrecom/news%20/loadingpagenews.dart';
import 'package:trendingrecom/youtube_now/youtube_loading.dart';
import 'youtube_movies/yt_moviesloading.dart';
import 'ytmusic/musicloading.dart';
import 'news /newspage.dart';
import 'bottomsheettryout.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color:  Color(0xff323246),
          child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(60),
                      bottomLeft: Radius.circular(60)),
                  color: Color(0xff7569D1),
                boxShadow: [BoxShadow(blurRadius: 20)]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top :25, right:10),
                      child: Text(
                        'Discover Whats Trending',
                        style: TextStyle(fontSize: 45,
                        fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1.1
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                          width: 100,
                          child: SvgPicture.asset('assets/images/trend.svg')),
                      SizedBox(width: 13,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoadingScreenNews()),
                            );
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)))),
                              elevation: MaterialStateProperty.all(20),

                              backgroundColor: MaterialStateProperty.all(
                                  Color(0xff17181C))),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.newspaper_rounded,
                                  size: 100,
                                  color: Color(0xff96C08B),
                                ),
                                Text(
                                  'News',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(fontSize: 30,
                                  color: Color(0xff96C08B)),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ytnloading()),
                            );
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                              elevation: MaterialStateProperty.all(20),
                              backgroundColor: MaterialStateProperty.all(
                                  Color(0xff17181C))),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.trending_up_rounded,
                                  size: 100,
                                  color: Color(0xffF3B3C6),
                                ),
                                Text(
                                  'Videos',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 30,
                                  color: Color(0xffF3B3C6)),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ytmoviesloadingscreen()),
                            );
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                              elevation: MaterialStateProperty.all(20),
                              backgroundColor: MaterialStateProperty.all(
                                  Color(0xff17181C))),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.movie_creation,
                                  size: 100,
                                  color:Color(0xffF8D68B),
                                ),
                                Text(
                                  'Movies',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(fontSize: 30,
                                  color:Color(0xffF8D68B)),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => musicloading()),
                            );
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                              elevation: MaterialStateProperty.all(20),
                              backgroundColor: MaterialStateProperty.all(
                                  Color(0xff17181C))),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.music_note_rounded,
                                  size: 100,
                                  color: Color(0xff7569D1),
                                ),
                                Text(
                                  'Music',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(fontSize: 30,
                                  color: Color(0xff7569D1)),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
                ),
              ),
        ));
  }
}
