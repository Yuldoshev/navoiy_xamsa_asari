import 'dart:math';

import 'package:flutter/material.dart';
import 'package:navoiy_app/model/book_row.dart';
import 'package:navoiy_app/test/home.dart';
import 'package:navoiy_app/ui/author.dart';

class BookShelf extends StatefulWidget {
  @override
  _BookShelfState createState() => _BookShelfState();
}

class _BookShelfState extends State<BookShelf> {
  Color randomColor() =>
      Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.orange[100],
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              fit: StackFit.loose,
              clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/images/AboutUsTop.png',
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Hero(
                        tag: 'image-hero',
                        child: new Container(
                          margin: const EdgeInsets.only(bottom: 20.0),
                          child: new Image.asset(
                            'assets/images/owl.png',
                            width: 100.0,
                            height: 100.0,
                          ),
                        )),
                    new Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      child: new Text(
                          'G\'azal mulkining sultoni \nAlisher Navoiy \nasarlari haqida',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                )
              ],
            ),
            new Container(
              height: 450.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                  border: Border.all(
                    color: Colors.orange[300],
                    width: 3.0,
                  ),
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0)),
                  color: Colors.orange[50],
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/AboutUsBottom.png"))),
              child: new DefaultTabController(
                length: 3,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: new MaterialButton(
                              minWidth: 50.0,
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BookShelf(),
                                      ));
                                });
                              },
                              color: Colors.orange[50],
                              child: new Text(
                                'Xamsa',
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: new MaterialButton(
                              minWidth: 50.0,
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Home(),
                                      ));
                                });
                              },
                              color: Colors.orange[50],
                              child: new Text(
                                'Test',
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: new MaterialButton(
                              minWidth: 50.0,
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Author(),
                                      ));
                                });
                              },
                              color: Colors.orange[50],
                              child: new Text(
                                'Biografiya',
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new BookRow(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.orangeAccent,
      //   elevation: 5.0,
      //   tooltip: 'Mualliflar',
      //   onPressed: () {
      //     AwesomeDialog(context: context, animType: AnimType.SCALE,  customHeader: Icon(
      //       Icons.brightness_auto_rounded,
      //       size: 100,
      //       // ignore: deprecated_member_use
      //     ), title: "Dastur muallifi: Yuldosheva Mehriniso", desc: "Dasturdagi asosiy ma'lumotlar va test savollari Alisher Navoiy nomidagi ToshDO'TAUning O‘zbek adabiyoti tarixi va folklor kafedrasi dotsentlari Karomat Mullaxo‘jaeva hamda Dilnavoz Yusupovalar ishtirokida tayyorlandi.", btnOk: FlatButton(
      //       child: Text('Orqaga'),
      //       onPressed: () {
      //         Navigator.of(context).pop();
      //       },
      //     ), btnOkOnPress: () {},  ).show();
      //   },
      //   child: Icon(Icons.brightness_auto_rounded),
      // ),
    );
  }
}
