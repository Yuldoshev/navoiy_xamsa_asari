import 'package:flutter/material.dart';
import 'package:navoiy_app/model/detail_model.dart';

class homeList extends StatelessWidget {
  final DetailModel model;

  homeList(this.model);
  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
        margin: new EdgeInsets.symmetric(vertical: 1.0),
        alignment: FractionalOffset.centerLeft,
        child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Colors.red, width: 2, style: BorderStyle.solid),
                  left: BorderSide(
                      color: Colors.green, width: 2, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.blue, width: 2, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.yellow, width: 2, style: BorderStyle.solid),
                ),
              ),
              child: new Image(
                image: new AssetImage(model.image),
                height: 92.0,
                width: 92.0,
              ),
            )));

    final baseTextStyle = const TextStyle(fontFamily: 'Lobster');
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xffb6b2df),
        fontSize: 12.0,
        fontWeight: FontWeight.w400);
    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 11.0);
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600);

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(66.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(model.number_nat, style: headerTextStyle, textAlign: TextAlign.center,),
        ],
      ),
    );

    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
        color: Colors.white, //Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        border: Border.all(color: Colors.blue),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.blue[100],
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/AboutUsTop.png',
                ),
              ),
            ),
            planetCard,
            planetThumbnail,
          ],
        ));
  }
}
