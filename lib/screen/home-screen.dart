import 'package:flutter/material.dart';
import 'package:keselamatan_berlalulintas/screen/motor-screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Widget motorHome(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: Colors.blue,
        child: InkWell(
          onTap: _toMotorDetailScreen,
          child: Center(
            child: Text(
              'Motor',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        )
      )
    );
  }

  Widget carHome(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: Colors.blue,
        child: InkWell(
          onTap: _toCarDetailScreen,
          child: Center(
            child: Text(
              'Mobil',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        )
      )
    );
  }

  Widget traffictSignsHome(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: Colors.blue,
        child: InkWell(
          onTap: _toTrafficSignsDetailScreen,
          child: Center(
            child: Text(
              'Rambu Lalu Lintas',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              motorHome(),
              carHome(),
              traffictSignsHome()
            ],
          ),
        )
      ),
    );    
  }

  _toMotorDetailScreen() {
    Navigator.pushNamed(context, '/motor-screen');
  }
  _toCarDetailScreen() {
    Navigator.pushNamed(context, '/car-screen');
  }
  _toTrafficSignsDetailScreen() {
    Navigator.pushNamed(context, '/traffic-signs-screen');
  }
}
