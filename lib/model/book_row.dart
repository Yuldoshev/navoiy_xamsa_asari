import 'package:flutter/material.dart';
import 'package:navoiy_app/model/detail_model.dart';
import 'package:navoiy_app/ui/fifth_screen.dart';
import 'package:navoiy_app/ui/first_screen.dart';
import 'package:navoiy_app/ui/fourth_screen.dart';
import 'package:navoiy_app/ui/second_screen.dart';
import 'package:navoiy_app/ui/third_screen.dart';

class BookRow extends StatefulWidget {
  @override
  _BookRowState createState() => _BookRowState();
}

class _BookRowState extends State<BookRow> {
  int indx = 0;
  PageController pageController =
      new PageController(viewportFraction: 0.85, initialPage: 0);
  DetailModel model;
  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      indx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 380.0,
        width: double.infinity,
        child: new PageView(
          controller: pageController,
          onPageChanged: (value) {
            pageChanged(value);
          },
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.orange[50], BlendMode.hue),
                  child: Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/item_back.png"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.blue[50],
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(10.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: new Offset(0.0, 2.0)),
                      ],
                    ),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Container(
                          height: 220.0,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0)),
                            child: new Image.asset('assets/images/hayrat.png',
                                fit: BoxFit.contain),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, bottom: 10.0, top: 10.0),
                          child: new Text('Xamsa',
                              style: const TextStyle(fontSize: 25.0),
                              textAlign: TextAlign.right),
                        ),
                        new Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, bottom: 10.0),
                          child: new Text(
                            'Hayratul-abror',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(20.0)),
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: new MaterialButton(
                              minWidth: 70.0,
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FirstScreen(),
                                      ));
                                });
                              },
                              color: Colors.blue,
                              child: new Text(
                                'Batafsil',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.orange[50], BlendMode.hue),
                  child: Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/item_back.png"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.cyan[50],
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(10.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: new Offset(0.0, 2.0)),
                      ],
                    ),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Container(
                            height: 220.0,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0)),
                              child: new Image.asset('assets/images/farhod.png',
                                  fit: BoxFit.contain),
                            )),
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, bottom: 10.0, top: 10.0),
                          child: new Text('Xamsa',
                              style: const TextStyle(fontSize: 25.0),
                              textAlign: TextAlign.right),
                        ),
                        new Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, bottom: 10.0),
                          child: new Text(
                            'Farhod va Shirin',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(20.0)),
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: new MaterialButton(
                              minWidth: 70.0,
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SecondScreen(),
                                      ));
                                });
                              },
                              color: Colors.blue,
                              child: new Text(
                                'Batafsil',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.orange[50], BlendMode.hue),
                  child: Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/item_back.png"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.teal[50],
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(10.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: new Offset(0.0, 2.0)),
                      ],
                    ),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Container(
                            height: 220.0,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0)),
                              child: new Image.asset('assets/images/layli.png',
                                  fit: BoxFit.contain),
                            )),
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, bottom: 10.0, top: 10.0),
                          child: new Text('Xamsa',
                              style: const TextStyle(fontSize: 25.0),
                              textAlign: TextAlign.right),
                        ),
                        new Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, bottom: 10.0),
                          child: new Text(
                            'Layli va Majnun',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(20.0)),
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: new MaterialButton(
                              minWidth: 70.0,
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ThirdScreen(),
                                      ));
                                });
                              },
                              color: Colors.blue,
                              child: new Text(
                                'Batafsil',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.orange[50], BlendMode.hue),
                  child: Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/item_back.png"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.green[50],
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(10.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: new Offset(0.0, 2.0)),
                      ],
                    ),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Container(
                            height: 220.0,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0)),
                              child: new Image.asset('assets/images/sabbai.png',
                                  fit: BoxFit.contain),
                            )),
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, bottom: 10.0, top: 10.0),
                          child: new Text('Xamsa',
                              style: const TextStyle(fontSize: 25.0),
                              textAlign: TextAlign.right),
                        ),
                        new Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, bottom: 10.0),
                          child: new Text(
                            'Sabbai Sayyor',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(20.0)),
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: new MaterialButton(
                              minWidth: 70.0,
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FourthScreen(),
                                      ));
                                });
                              },
                              color: Colors.blue,
                              child: new Text(
                                'Batafsil',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.orange[50], BlendMode.hue),
                  child: Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/item_back.png"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.orange[50],
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(10.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: new Offset(0.0, 2.0)),
                      ],
                    ),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Container(
                            height: 220.0,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0)),
                              child: new Image.asset('assets/images/saddi.png',
                                  fit: BoxFit.contain),
                            )),
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, bottom: 10.0, top: 10.0),
                          child: new Text('Xamsa',
                              style: const TextStyle(fontSize: 25.0),
                              textAlign: TextAlign.right),
                        ),
                        new Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, bottom: 10.0),
                          child: new Text(
                            'Saddi Iskandariy',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(20.0)),
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: new MaterialButton(
                              minWidth: 70.0,
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FifthScreen(),
                                      ));
                                });
                              },
                              color: Colors.blue,
                              child: new Text(
                                'Batafsil',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
