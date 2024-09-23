import 'package:flutter/material.dart';

class generalTile extends StatelessWidget {
  final String imgUrl, title, desc, content, posturl;

  generalTile({required this.imgUrl, required this.desc, required this.title, required this.content, required this.posturl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: SizedBox(
          child: Container(
            margin: EdgeInsets.only(bottom: 24),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(height: 8,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff17181C),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: SizedBox(
                        height: 50,
                        child: Text(
                          title,
                          maxLines: 2,
                          style: TextStyle(
                            height: 1.3,
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    desc,
                    maxLines: 1,
                    style: TextStyle(color: Colors.white, fontSize: 14,
                    fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )),
    );
  }
}