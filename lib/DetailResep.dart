import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailResep extends StatelessWidget {
  final String itemJudul;
  final String itemSub;
  final String itemImage;
  final String qty;
  final String itemResep;
  final String itemCara;

  const DetailResep(
      {Key key,
      this.itemJudul,
      this.itemSub,
      this.itemImage,
      this.qty,
      this.itemResep,
      this.itemCara})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Detail ' + itemJudul,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset(
                  itemImage,
                  height: 200.0,
                  width: 500.0,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Text(
                  itemJudul,
                  style: TextStyle(color: Colors.red, fontSize: 24.0),
                ),
              ),
              Text('Resep ' + itemSub + ' Mudah dan Praktis'),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                child: Container(
                  height: 3.0,
                  width: 400.0,
                  color: Colors.red,
                ),
              ),
              Text(
                'Bahan-bahan',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(itemResep),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Cara Memasak',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(itemCara),
            ],
          ),
        ),
      ),
    );
  }
}
