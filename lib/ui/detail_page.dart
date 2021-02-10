import 'package:flutter/material.dart';
import 'package:navoiy_app/model/detail_model.dart';

class DetailPage extends StatelessWidget {
  final DetailModel model;
  DetailPage(this.model);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: new Color(0xFFF0EAD6),
        child: new Stack(
          children: <Widget>[
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/Poet.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
            ),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground() {
    return new Container(
      child: new Image.network(
        'assets/images/logos.jpg',
        fit: BoxFit.cover,
        height: 300.0,
        alignment: Alignment.center,
      ),
      constraints: new BoxConstraints.expand(height: 295.0),
    );
  }

  Container _getGradient() {
    return new Container(
      alignment: Alignment.center,
      margin: new EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[new Color(0x00F0EAD6), new Color(0xFFF0EAD6)],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Container _getContent() {
    return new Container(
      alignment: Alignment.center,
      child: new ListView(
        padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 32.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                    margin: new EdgeInsets.symmetric(vertical: 8.0),
                    height: 2.0,
                    width: 18.0,
                    color: new Color(0xffF0EAD6)),
                new Text(
                  model.number_nat,
                  textAlign: TextAlign.center,
                  style: Style.headerTextStyle,
                ),
                new Text(
                  model.title,
                  textAlign: TextAlign.start,
                  style: Style.titleTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _getToolbar(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: new BackButton(color: Colors.white),
    );
  }
}

class Style {
  static final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
  static final smallTextStyle = commonTextStyle.copyWith(
    fontSize: 9.0,
  );
  static final commonTextStyle =
      baseTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.bold);
  static final titleTextStyle = baseTextStyle.copyWith(
      color: Colors.black87,
      fontSize: 16.0,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w900);
  static final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.black87, fontSize: 17.0, fontWeight: FontWeight.bold);
}
