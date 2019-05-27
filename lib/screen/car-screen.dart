import 'package:flutter/material.dart';
import 'package:keselamatan_berlalulintas/model/car-model.dart';
import 'package:keselamatan_berlalulintas/screen/car-detail-screen.dart';

List<CarDetailArguments> _generateCarDetailItemsSeatBelt(){
  List<CarDetailArguments> carDetailArguments = [
    CarDetailArguments(
      no: '1. ',
      descContentItem: 'Menahan posisi duduk/badan ketika terjadi kecelakaan di jalan.'
    ),
    CarDetailArguments(
      no: '2. ',
      descContentItem: 'Mengurangi resiko bahaya benturan dengan benda-benda yang ada dalm kendaraan.'
    ),
    CarDetailArguments(
      no: '3. ',
      descContentItem: 'Mencegah si pengendara terlempar dari dalam kendaraan saat terjadi tabrakan.'
    ),
    CarDetailArguments(
      no: '4. ',
      descContentItem: 'Membuat lebih nyaman ketika berkendara.'
    ),
  ];
  return carDetailArguments;
}

List<CarDetailArguments> _generateCarDetailItemsAirBag(){
  List<CarDetailArguments> carDetailArguments = [
    CarDetailArguments(
      no: '1. ',
      descContentItem: 'Airbag merupakan fitur keselamatan yang berbentuk kantung udara yang secara otomatis akan mengembang apabila terjadi kecelakaan atau benturan yang keras pada saat mengemudi.'
    ),
    CarDetailArguments(
      no: '2. ',
      descContentItem: 'Airbag memiliki fungsi utama yaitu melindungi daerah kepala, leher dan dada pengemudi dan penumpang pada saat terjadi kecelakaan atau benturan yang keras.'
    ),
  ];
  return carDetailArguments;
}

class CarScreen extends StatefulWidget {

  @override
  _CarScreenState createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen>{

  List<CarDetailArguments> carDetailItemsSeatBelt = _generateCarDetailItemsSeatBelt();
  List<CarDetailArguments> carDetailItemsAirBag = _generateCarDetailItemsAirBag();

  Widget cardDetail(String title, String imageItems, List carDetailItems){
    return Flexible(
      flex: 2,
      child: Card(
        color: Colors.grey,
        child: InkWell(
          onTap: (){
            toDetailItemCar(title, imageItems, carDetailItems);
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
    String title2,
    String imageItems2,
    List detailItems2){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          cardDetail(title1, imageItems1, detailItems1),
          cardDetail(title2, imageItems2, detailItems2)         
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
            rowDetail(
              'Sabuk Pengaman', 
              'assets/items_car/seatbelt.jpeg',
              carDetailItemsSeatBelt,
              'Air Bag', 
              'assets/items_car/airbag.jpg',
              carDetailItemsAirBag
              )
          ],
        )
      ),
    );
  }  
  toDetailItemCar(String titleItems, String imageItems, List carDetailItems){
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (context) => CarDetailScreen(
            title: 'Detail Item Mobil',
            titleItems: titleItems,
            imageItems: imageItems,
            carDetailItems: carDetailItems
    )));
  }
}

