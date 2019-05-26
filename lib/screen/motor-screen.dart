import 'package:flutter/material.dart';
import 'package:keselamatan_berlalulintas/screen/motor-detail-screen.dart';

class MotorScreen extends StatefulWidget {

  @override
  _MotorScreenState createState() => _MotorScreenState();
}

class _MotorScreenState extends State<MotorScreen>{

  Widget cardDetail(String title){
    return Flexible(
      flex: 2,
      child: Card(
        child: InkWell(
          onTap: toDetailItemMotor,
          child: Center(
            child: Text(
              title,
            ),
          ),
        )
      ),
    );
  }

  Widget rowDetail(String title1, String titel2){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          cardDetail(title1),
          cardDetail(titel2)          
        ],
      )
    );
  }

  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Standar Keselamatan Motor'
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: <Widget>[
            rowDetail('Helm', 'Jaket')
          ],
        )
      ),
    );
  }  
  toDetailItemMotor(){
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (context) => MotorDetailScreen(
            title: 'Detail Item Motor',
    )));
  }
}

