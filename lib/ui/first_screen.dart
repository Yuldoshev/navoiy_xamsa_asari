import 'package:flutter/material.dart';
import 'package:navoiy_app/model/detail_model.dart';
import 'package:navoiy_app/ui/detail_page.dart';
import 'package:navoiy_app/ui/row_model_col_list.dart';
class FirstScreen extends StatefulWidget {
  int indx;
  DetailModel model;

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool horizontal;
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Row(
        children: <Widget>[
          Expanded(
            child: new Container(
              color: Colors.white, //new Color(0xFF736AB7),
              child: new CustomScrollView(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                slivers: <Widget>[
                  SliverAppBar(
                    pinned: true,
                    expandedHeight: 160,
                    backgroundColor: Colors.orange[400],
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        "Hayrat ul-Abror",
                        style: TextStyle(backgroundColor: Colors.orangeAccent[100] ,fontFamily: 'Lobster', fontSize: 17, color: Colors.black87),
                        textAlign: TextAlign.center,
                      ),
                      centerTitle: true,
                      background: Image.asset(
                        'assets/images/images.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  new SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 1.0),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (context, index) => Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                new PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new DetailPage(detail_model[index]),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                                  new FadeTransition(opacity: animation, child: child),
                                ) ,
                              ),
                              child: homeList(detail_model[index]),
                            )
                          ],
                        ),
                        childCount: detail_model.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
