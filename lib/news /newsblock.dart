import 'package:flutter/material.dart';

class newstile extends StatelessWidget {
  final String imgUrl, title, desc, content, posturl;

  newstile(
      {required this.imgUrl,
        required this.desc,
        required this.title,
        required this.content,
        required this.posturl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            margin: EdgeInsets.only(bottom: 24),
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Color(0xff17181C),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        imgUrl,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    title,
                    maxLines: 2,
                    style: TextStyle(
                        height: 1.2,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    desc,
                    maxLines: 8,
                    style: TextStyle(color: Colors.white, fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
