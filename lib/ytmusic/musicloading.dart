import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trendingrecom/news /newsblock.dart';
import 'music page.dart';


var musicdata;


class musicloading extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _musicloadingState();
  }
}

class _musicloadingState extends State<musicloading> {
  @override
  void initState() {
    super.initState();
    getnewsdata();
  }

  void getnewsdata() async {
    http.Response response;
    response = await http.get(
        Uri.parse('https://genius-song-lyrics1.p.rapidapi.com/chart/songs/' ).replace(
          queryParameters: {
            'per_page': '10',
            'page': '1',
            },
        ),
        headers: {
          'X-RapidAPI-Key':
          'b687daa4efmsh5da3a2453267cc1p182cd1jsnbb646e0d2c75',
          'X-RapidAPI-Host': 'genius-song-lyrics1.p.rapidapi.com'
        });

    if (response.statusCode == 200) {
      print(response.body);

      Map fetcheddata= jsonDecode(response.body);
      var ramu = fetcheddata ;

      musicdata = ramu['chart_items'] ;
      print(musicdata);

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return musicpage();
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
