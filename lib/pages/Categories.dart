import 'package:flutter/material.dart';

import 'package:seafood/partials/Navbar.dart';
import 'package:seafood/partials/CategoryCard.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {


  List<CategoryCard> categoriesList = new List<CategoryCard>();


  @override
  Widget build(BuildContext context) {
    categoriesList.add(CategoryCard());
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
                            "Categories",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(44, 57, 65, 1)),
                          ),
                        ]
                    ),

                    SizedBox(height: 30,),
                    categoriesList[0].getWidget(context),
                    SizedBox(height: 18,),
                    categoriesList[0].getWidget(context),
                    SizedBox(height: 18,),
                    categoriesList[0].getWidget(context),
                    SizedBox(height: 18,),
                    categoriesList[0].getWidget(context),
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
