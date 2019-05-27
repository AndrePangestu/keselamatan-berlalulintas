import 'package:flutter/material.dart';
import 'package:keselamatan_berlalulintas/model/car-model.dart';

class CarDetailScreen extends StatefulWidget {
  CarDetailScreen({
    Key key, 
    this.title,
    this.titleItems,
    this.imageItems,
    this.carDetailItems
  }) : super(key: key);

  final String title;
  final String titleItems;
  final String imageItems;
  final List carDetailItems;

  @override
  _CarDetailScreenState createState() => _CarDetailScreenState();
}

class _CarDetailScreenState extends State<CarDetailScreen>{  

  Widget descContentItem(String no, String desc){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(no),
        Flexible(
          child: Text(
            desc,
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }

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
              widget.imageItems, 
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
                    widget.titleItems,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget.carDetailItems.length,
                      itemBuilder: (BuildContext buildContext, int index){
                        CarDetailArguments carDetailArguments = widget.carDetailItems[index];
                        return descContentItem(carDetailArguments.no, carDetailArguments.descContentItem);
                      }
                    ),
                  )
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
