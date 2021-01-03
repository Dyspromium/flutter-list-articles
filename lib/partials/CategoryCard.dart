import 'package:flutter/material.dart';

import 'package:seafood/pages/ProductsOfCategory.dart';

class CategoryCard{
  String title = "Clams";
  String imgPath = "assets/img/ex_box.jpg";
  String link = "#";
  String id = "c1000";

  Widget getWidget(context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductsOfCategory(categoryId: id,),
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
                    imgPath,
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
                        title,
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