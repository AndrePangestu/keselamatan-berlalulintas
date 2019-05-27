import 'package:flutter/material.dart';
import 'package:keselamatan_berlalulintas/model/motor-model.dart';
import 'package:keselamatan_berlalulintas/screen/motor-detail-screen.dart';

List<MotorDetailArguments> _generateMotorDetailItemsHelm(){
  List<MotorDetailArguments> motorDetailArguments = [
    MotorDetailArguments(
      no: '1. ',
      descContentItem: 'Melindungi kepala dari benturan saat terjadi kecelakaan.'
    ),
    MotorDetailArguments(
      no: '2. ',
      descContentItem: 'Melindungi wajah (khususnya mata) dari angin, debu, kotoran, serta benda lainnya.'
    ),
    MotorDetailArguments(
      no: '3. ',
      descContentItem: 'Melindungi kepala dari panasnya terik matahari.'
    ),
    MotorDetailArguments(
      no: '4. ',
      descContentItem: 'Melindungi kepala dari basah air hujan.'
    ),
    MotorDetailArguments(
      no: '5. ',
      descContentItem: 'Membuat penampilan jadi lebih menarik.'
    ),
    MotorDetailArguments(
      no: '6. ',
      descContentItem: 'Mencegah tilang polisi lalu lintas (Polantas).'
    ),
  ];
  return motorDetailArguments;
}

List<MotorDetailArguments> _generateMotorDetailItemsJaket(){
  List<MotorDetailArguments> motorDetailArguments = [
    MotorDetailArguments(
      no: '1. ',
      descContentItem: ' Melindungi Tubuh dari Suhu Dingin.'
    ),
    MotorDetailArguments(
      no: '2. ',
      descContentItem: 'Menahan Angin.'
    ),
    MotorDetailArguments(
      no: '3. ',
      descContentItem: 'Melindungi Tubuh dari Polusi Udara dan Kotoran di Jalan.'
    ),
    MotorDetailArguments(
      no: '4. ',
      descContentItem: 'Melindungi Tubuh Ketika Kecelakaan.'
    ),
  ];
  return motorDetailArguments;
}

List<MotorDetailArguments> _generateMotorDetailItemsSarungTangan(){
  List<MotorDetailArguments> motorDetailArguments = [
    MotorDetailArguments(
      no: '1. ',
      descContentItem: 'Menghindari luka tangan saat kecelakaan.'
    ),
    MotorDetailArguments(
      no: '2. ',
      descContentItem: 'Melindungi dari cuaca ekstrem.'
    ),
    MotorDetailArguments(
      no: '3. ',
      descContentItem: 'Menambah penampilan.'
    ),
    MotorDetailArguments(
      no: '4. ',
      descContentItem: 'Mengurangi getaran motor.'
    ),
  ];
  return motorDetailArguments;
}

List<MotorDetailArguments> _generateMotorDetailItemsSepatu(){
  List<MotorDetailArguments> motorDetailArguments = [
    MotorDetailArguments(
      no: '1. ',
      descContentItem: 'Melingdungi dari sengatan matahari terutama saat berkendara di siang hari.'
    ),
    MotorDetailArguments(
      no: '2. ',
      descContentItem: 'Melindungi dari dinginnya angin malam untuk waktu berkendara malam hari.'
    ),
    MotorDetailArguments(
      no: '3. ',
      descContentItem: 'Anti slip untuk menginjak rem atau gigi.'
    ),
    MotorDetailArguments(
      no: '4. ',
      descContentItem: 'Melindungi kaki dari medan becek saat turun dari motor.'
    ),
    MotorDetailArguments(
      no: '5. ',
      descContentItem: 'Melindungi kaki dari benda tajam di jalan raya ketika memerlukan sandaran kaki.'
    ),
    MotorDetailArguments(
      no: '6. ',
      descContentItem: 'Melindungi kaki dari goresan aspal atau motor saat terjadi kecelakaan.'
    ),
  ];
  return motorDetailArguments;
}

class MotorScreen extends StatefulWidget {  

  @override
  _MotorScreenState createState() => _MotorScreenState();
}

class _MotorScreenState extends State<MotorScreen>{
  
  List<MotorDetailArguments> motorDetailItemsHelm = _generateMotorDetailItemsHelm();
  List<MotorDetailArguments> motorDetailItemsJaket = _generateMotorDetailItemsJaket();
  List<MotorDetailArguments> motorDetailItemsSarungTangan = _generateMotorDetailItemsSarungTangan();
  List<MotorDetailArguments> motorDetailItemsSepatu = _generateMotorDetailItemsSepatu();

  Widget cardDetail(String title, String imageItems, List motorDetailItems){
    return Flexible(
      flex: 2,
      child: Card(
        color: Colors.grey,
        child: InkWell(
          onTap: (){
            toDetailItemMotor(title, imageItems, motorDetailItems);
          },
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        )
      ),
    );
  }

  Widget rowDetail(
    String title1, 
    String imageItems1,
    List detailItems1, 
    String titel2, 
    String imageItems2,
    List detailItems2){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          cardDetail(title1, imageItems1, detailItems1),
          cardDetail(titel2, imageItems2, detailItems2)          
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
            rowDetail(
              'Helm', 
              'assets/items_motor/motorcycle_helmets.png', 
              motorDetailItemsHelm, 
              'Jaket',
              'assets/items_motor/jaket.jpeg', 
              motorDetailItemsJaket
            ),
            rowDetail(
              'Sarung Tangan', 
              'assets/items_motor/sarungtangan.jpeg', 
              motorDetailItemsSarungTangan, 
              'Sepatu', 
              'assets/items_motor/sepatu.jpeg',
              motorDetailItemsSepatu
            )
          ],
        )
      ),
    );
  }  
  toDetailItemMotor(String titleItems, String imageItems, List motorDetailItems){
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (context) => MotorDetailScreen(
            title: 'Detail Item Motor',
            titleItems: titleItems,
            imageItems: imageItems,
            motorDetailItems: motorDetailItems
    )));
  }
}

