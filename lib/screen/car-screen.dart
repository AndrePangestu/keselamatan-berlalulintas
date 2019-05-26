import 'package:flutter/material.dart';

class CarScreen extends StatefulWidget {

  @override
  _CarScreenState createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen>{

  Widget cardDetail(String title){
    return Flexible(
      flex: 2,
      child: Card(
        child: InkWell(
          onTap: (){},
          child: Center(
            child: Text(
              title,
            ),
          ),
        )
      ),
    );
  }

  Widget rowDetail(String title1, String title2){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          cardDetail(title1),
          cardDetail(title2)          
        ],
      )
    );
  }

  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Standar Keselamatan Mobil'
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: <Widget>[
            rowDetail('Sabuk Pengaman', 'Kantung Udara')
          ],
        )
      ),
    );
  }  
}

