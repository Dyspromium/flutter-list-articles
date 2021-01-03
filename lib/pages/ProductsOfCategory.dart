import 'package:flutter/material.dart';

import 'package:seafood/partials/ProductCard.dart';
import 'package:seafood/partials/Navbar.dart';

class ProductsOfCategory extends StatefulWidget {

  final String categoryId;

  ProductsOfCategory({Key key, this.categoryId}) : super(key: key);


  @override
  _ProductsOfCategoryState createState() => _ProductsOfCategoryState();
}

class _ProductsOfCategoryState extends State<ProductsOfCategory> {

  String title = "Clams";

  String value = 'Sort by Popularity';

  List<ProductCard> productList = new List<ProductCard>();

  String getId(){
    return widget.categoryId;
  }

  @override
  Widget build(BuildContext context) {
    productList.add(ProductCard('zeaaz', "ze"));

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(25,30,25,30),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(44, 57, 65, 1)),
                          ),
                          DropdownButton<String>(
                            value: value,
                            onChanged: (String newValue){
                              setState((){
                                value = newValue;
                              });
                            },
                            items: <String>['Sort by Popularity', 'Sort by Latest', "Sort by Price (low to high)", "Sort by Price (high to low)"]
                                .map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 12),
                                ),
                              );
                            }).toList(),
                          )
                        ]
                    ),
                    SizedBox(height: 20,),
                    productList[0].getWidget(context),
                    SizedBox(height: 18,),
                    productList[0].getWidget(context),
                    SizedBox(height: 18,),
                    productList[0].getWidget(context),
                    SizedBox(height: 18,),
                    productList[0].getWidget(context),
                  ],
                ),
              )
          ),
        ),
        bottomNavigationBar: Navbar(index:2),
      ),
    );
  }
}
