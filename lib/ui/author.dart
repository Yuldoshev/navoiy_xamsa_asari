import 'package:flutter/material.dart';




class Author extends StatelessWidget {
  static const routeName = '/Profile6';

  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width * 100;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
             _buildHeader(),
              _buildMainInfo(context,widthC),

              SizedBox(height: 10.0),
              _buildInfo(context,widthC),
            ],
          ),
        ));
  }

  Widget _buildHeader() {
    return Stack(
      children: <Widget>[
        Ink(
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
            gradient: LinearGradient(colors: [
              Colors.orange,
              Colors.orange[200],
              Colors.orange[300],
              Colors.yellow[900],
              Colors.lightGreenAccent,
            ]),

          ),
        ),
        Ink(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 140),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                color: Colors.white,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.lightGreenAccent,
                      Colors.orange[100],
                      Colors.orange[200],
                      Colors.orange[300],

                    ]),
                  ),
                  child: Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular( 100),
                        child: Image.asset('assets/images/owl.png',width: 100,height: 100,fit: BoxFit.fill)),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }


  Widget _buildMainInfo(BuildContext context,double width){
    return Container(
        width: width,
        margin: const EdgeInsets.all(10),
    alignment: AlignmentDirectional.center,
    child: Column(
    children: <Widget>[
    Text('Alisher Navoiy',style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold)),
    SizedBox(height: 10),
    Text('1441-1501',style: TextStyle(color: Colors.orange))
    ],
    ),
    );
  }

  Widget _buildInfo(BuildContext context,double width){
    return Container(
        padding: EdgeInsets.all(10),
        child:   Card(
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Text('     Asl ismi Nizomiddin Mir Alisher. U Hirotda tug`ilib, shu yerda umrining asosiy qismini o`tkazgan. Navoiyning otasi G`iyosiddin Bahodir temuriylar xonadoniga yaqin bo`lgan. She`r zavqi va iste`dodi erta uyg`ongan. Bolalikdayoq Farididdin Attorning “Mantiqut-tayr” asarini yod olgan, Sharafiddin Ali Yazdiy nazariga tushgan, Mavlono Lutfiy yosh shoir iste`dodiga yuqori baho bergan, Kamol Turbatiy e`tirofini qozongan.\n     Husayn Boyqaro Xuroson taxtiga o`tirgach (1469), Navoiy hayoti va ijodida yangi bosqich boshlanadi, muhrdorlik (1469) mansabiga, vazirlik (1472) va Astrobod hokimligi (1487)ga tayinlanadi. 1480-1500 yillar mobaynida o`z mablag`lari hisobidan bir necha madrasa, 40 rabot (safardagi yo`lovchilar to`xtab o`tish joyi), 17 masjid, 10 xonaqoh, 9 hammom, 9 ko`prik, 20 ta hovuz qurdiradi. Husayn Boyqaro Alisher Navoiyga “muqarrabi hazrati sultoniy” (“sulton hazratlarining eng yaqin kishisi”) degan unvonni beradi. Unga ko`ra Navoiy davlatning barcha ishlariga aralasha olardi.\n     Navoiy ijodi ixlosmandlari uning she`rlarini yig`ib, “Ilk devon” (1464-65) tuzgan edilar, so`ngra “Badoyiul-bidoya” (“Go`zallikning boshlanishi”), “Navodirun-nihoya” (“Nodirliklar nihoyasi”) nomli devonlar (1470-yillar) tartib berilgan. Lirik merosi umumiy hajmi 50000 misradan ortiq “Xazoyinul-maoniy” nomli to`rt devon (1491-1498)ga jamlangan. Navoiy she`riyatining mavzular doirasi keng, janrlar ko`lami (16) xilma-xil. G`azallari “oshiqona, orifona, rindona” (Shayxzoda) sifatlar bilan o`rganiladi. G`azallarida insoniy muhabbat, ilohiy ishq bilan uyg`un holda ulug`lanib, “majoz - haqiqat ko`prigi” aqidasiga amal qilingan. Alisher Navoiy she`riyatidagi zohiriy ma`no yangiliklari bilan birga botiniy sifatlarni ham o`rgangandagina ularni idrok etishga erishish mumkin.\n     “Nazmul-javohir” (1485) Hazrat Alining “Nasrul-laoliy” asarining turkiy nazmga solingani bo`lib, 266 ruboiydan iborat bu asarda axloqiy-ta`limiy qarashlar o`z aksini topgan.\n     Alisher Navoiy ijodining yuksak cho`qqisi “Xamsa” asari (1483-85)dir, shoir birinchilardan bo`lib, turkiy tilda to`liq “Xamsa” yaratdi va turkiy tilda shunday ko`lamdor asar yozish mumkinligini isbotlab berdi.\n       “Xamsa” tarkibiga “Hayratul-abror”, “Farhod va Shirin”, “Layli va Majnun”, “Sab`ai sayyor”, “Saddi Iskandariy” kabi dostonlar kiradi.\n               Navoiyning tasavvufiy qarashlari deyarli barcha asarlarining ruhiga singgan bo`lsa-da, maxsus “Lisonut-tayr” dostoni(1499)da, “Nasoyimul-muhabbat” manqabasi”(1495-96)da, “Tarixi anbiyo va hukamo”(1485-8), “Arbain”, “Munojot” singari asarlarida aks etgan.')
              ],
            ),
          ),
        )
    );
  }
}