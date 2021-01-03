import 'package:flutter/material.dart';

import 'package:seafood/products_manager/ProductsManager.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String value = 'Default sorting';

  @override
  void initState() {
    getNewProductsManager();
  }

  getNewProductsManager(){
    return ProductsManager(value);
  }



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25,30,25,30),
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(44, 57, 65, 1)),
                    ),
                    DropdownButton<String>(
                      value: value,
                      onChanged: (String newValue){
                        setState((){
                          value = newValue;
                        });
                      },
                      items: <String>['Default sorting','Sort by Popularity', 'Sort by Latest', "Sort by Price (low to high)", "Sort by Price (high to low)"]
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
              getNewProductsManager()
            ],
          ),
        )
      ),
    );
  }
}
