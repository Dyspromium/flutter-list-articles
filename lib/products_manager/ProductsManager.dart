import 'package:flutter/material.dart';

import 'package:seafood/partials/ProductCard.dart';
import 'package:seafood/utils/Database.dart';

class ProductsManager extends StatefulWidget {

  final String filter;

  ProductsManager(this.filter);

  @override
  _ProductsManagerState createState() => _ProductsManagerState();
}

class _ProductsManagerState extends State<ProductsManager> {

  DatabaseHelper db = new DatabaseHelper();

  List<ProductCard> productsList;

  @override
  void initState() {
    generateProduct();
  }

  Future<String> generateProduct() async{
    productsList = await db.fetchProducts();
  }

  Widget productContainer(context){
    List<Widget> cardList = new List<Widget>();

    for(var product in productsList){
      cardList.add(product.getWidget(context));
    }

    return Column(
      children: cardList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("zaedaqze"),);
  }
}
