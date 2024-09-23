import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'newspage.dart';
import 'newsblock.dart';

var newsdata;


class LoadingScreenNews extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenNewsState();
  }
}

class _LoadingScreenNewsState extends State<LoadingScreenNews> {
  @override
  void initState() {
    super.initState();
    getnewsdata();
  }

  void getnewsdata() async {
    http.Response response;
    response = await http.get(
        Uri.parse('https://news67.p.rapidapi.com/v2/trending').replace(
          queryParameters: {'relatedNewsLimit': '4', 'languages': 'en'},
        ),
        headers: {
          'X-RapidAPI-Key':
              'b687daa4efmsh5da3a2453267cc1p182cd1jsnbb646e0d2c75',
          'X-RapidAPI-Host': 'news67.p.rapidapi.com'
        });

    if (response.statusCode == 200) {
      print(response.body);

      Map fetcheddata= jsonDecode(response.body);
      var ramu = fetcheddata ;

      newsdata = ramu["news"][2]["News"] ;
      print(newsdata);

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return newspage();
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
