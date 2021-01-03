import 'package:flutter/material.dart';

import 'package:seafood/pages/Product.dart';

class ProductCard{

  final String name;
  final String img;

  ProductCard(this.name, this.img);


  Widget getWidget(context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Product(productId: "1000",),
          )
        );
      },
      child: Container(
          height: 175.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(color: Color.fromRGBO(255, 255, 255, 0.10), spreadRadius: 20),
            ],
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                    img,
                    height:175.0,
                    width :MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 15, 12),
                      child: Text(
                          name,
                        style: TextStyle(fontSize: 18,color: Color.fromRGBO(44, 57, 65, 1)),
                      ),
                    )
                ),
              ),
            ],
          )
      ),
    );
  }
}