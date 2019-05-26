import 'package:flutter/material.dart';

class MotorDetailScreen extends StatefulWidget {
  MotorDetailScreen({
    Key key, 
    this.title
  }) : super(key: key);

  final String title;

  @override
  _MotorDetailScreenState createState() => _MotorDetailScreenState();
}

class _MotorDetailScreenState extends State<MotorDetailScreen>{

  


  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/item_motor/motorcycle_helmets.png', 
              width: MediaQuery.of(context).size.width / 2,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Helm',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('1. '),
                      Text(
                        'Melindungi kepala dari benturan saat terjadi kecelakaan',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('2. '),
                      Flexible(
                        child: Text(
                        'Melindungi wajah (khususnya mata) dari angin, debu, kotoran, serta benda lainnya',
                        textAlign: TextAlign.left,
                      ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('3. '),
                      Flexible(
                        child: Text(
                        'Melindungi kepala dari panasnya terik matahari',
                        textAlign: TextAlign.left,
                      ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('4. '),
                      Flexible(
                        child: Text(
                        'Melindungi kepala dari basah air hujan',
                        textAlign: TextAlign.left,
                      ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('5. '),
                      Flexible(
                        child: Text(
                        'Membuat penampilan jadi lebih menarik',
                        textAlign: TextAlign.left,
                      ),
                      )
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('6. '),
                      Flexible(
                        child: Text(
                        'Mencegah tilang polisi lalu lintas (Polantas)',
                        textAlign: TextAlign.left,
                      ),
                      )
                    ],
                  ),
                ],
              )
            )
          ),
        ],
        )
      ),
    );
  }  
}

