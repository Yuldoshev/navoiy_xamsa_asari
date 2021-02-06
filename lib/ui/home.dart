
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navoiy_app/model/book_shelf.dart';

class NavoiyBooks extends StatefulWidget {
  @override
  _NavoiyBooksState createState() => new _NavoiyBooksState();
}

class _NavoiyBooksState extends State<NavoiyBooks>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 250), vsync: this);
    animation = new Tween(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
          body: new Container(
            child: new Stack(
              children: <Widget>[
                Container(
                  child: Align(
                    //alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/images/mini.jpg',
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
                new Center(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Hero(
                          tag: 'image-hero',
                          child: new Container(
                            margin: const EdgeInsets.only(bottom: 20.0),
                            child: new Image.asset('assets/images/owl.png',
                                width: 123.0, height: 123.0),
                          )),
                      new Hero(
                          tag: 'hero-text',
                          child: new Container(
                            margin: const EdgeInsets.only(bottom: 20.0),
                            child: new Text(
                                'G\'azal mulkining sultoni \nAlisher Navoiy',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          )),
                      new Opacity(
                        opacity: animation.value,
                        child: new Container(
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(30.0)),
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: new MaterialButton(
                              minWidth: 150.0,
                              onPressed: () {
                                controller.forward();
                                new Future.delayed(new Duration(milliseconds: 250))
                                    .then((_) => Navigator.of(context).push(
                                    new MaterialPageRoute<Null>(
                                        builder: (BuildContext context) {
                                          return new BookShelf();
                                        })));
                              },
                              color: Colors.white,
                              child: new Text('Batafsil >>',
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
