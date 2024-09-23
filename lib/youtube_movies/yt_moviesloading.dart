import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trendingrecom/news /newsblock.dart';
import 'yt_moviespage.dart';


var moviesdata;


class ytmoviesloadingscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ytmoviesloadingscreenState();
  }
}

class _ytmoviesloadingscreenState extends State<ytmoviesloadingscreen> {
  @override
  void initState() {
    super.initState();
    getnewsdata();
  }

  void getnewsdata() async {
    http.Response response;
    response = await http.get(
        Uri.parse('https://youtube-search-and-download.p.rapidapi.com/trending' ).replace(
          queryParameters: {'id': 'UCE_M8A5yxnLfW0KghEeajjw',
            'type': 'mo',
            'hl': 'en',
            'gl': 'IN'},
        ),
        headers: {
          'X-RapidAPI-Key':
          'b687daa4efmsh5da3a2453267cc1p182cd1jsnbb646e0d2c75',
          'X-RapidAPI-Host': 'youtube-search-and-download.p.rapidapi.com'
        });

    if (response.statusCode == 200) {
      print(response.body);

      Map fetcheddata= jsonDecode(response.body);
      var ramu = fetcheddata ;

      moviesdata = ramu["contents"] ;
      print(moviesdata);

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return YtMovies_page();
      }));
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff17181C),
        child: Center(
          child: CircularProgressIndicator(
            color: Color(0xff7569D1),
          ),
        ),
      ),
    );
  }
}
