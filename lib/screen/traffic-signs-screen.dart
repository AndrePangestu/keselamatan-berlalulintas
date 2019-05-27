import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrafficSignsScreen extends StatefulWidget {

  @override
  _TrafficSignsScreenState createState() => _TrafficSignsScreenState();
}

class _TrafficSignsScreenState extends State<TrafficSignsScreen>{

  Widget cardDetail(String urlAssets, String title){
    return Flexible(
      flex: 2,
      child: Card(
        child: InkWell(
          onTap: (){},
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 12,
                      child: Image.asset(
                      urlAssets,
                      height: 100,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
        )
      ),
    );
  }

  Widget rowDetail(String urlAssets1, String title1, String urlAssets2, String title2){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          cardDetail(urlAssets1, title1),
          cardDetail(urlAssets2, title2)          
        ],
      )
    );
  }

  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rambu Lalu Lintas'
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: ListView(
          children: <Widget>[
            rowDetail('assets/rambu/tikungan_kekiri.png', 'Tikungan Ke Kiri', 'assets/rambu/Indonesia_New_Road_Sign_1e.png', 'Tikungan Tajam Ke Kiri',),
            rowDetail('assets/rambu/Indonesia_New_Road_Sign_1j.png', 'Banyak Tikungan', 'assets/rambu/Indonesia_New_Road_Sign_1g.png', 'Tikungan Ganda'),
          ],
        )
      ),
    );
  }  
}

