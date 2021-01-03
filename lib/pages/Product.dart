import 'package:flutter/material.dart';

import 'package:seafood/partials/Navbar.dart';

class Product extends StatefulWidget {

  final String productId;

  const Product({Key key, this.productId}): super(key:key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {

  String price = "90 c/oz";
  String imgPath = "assets/img/ex_box.jpg";
  String title = "15 LB Seafood Box";

  String description = "Sustainably caught in a small artisanal fishery off the coast of Fogo Island, Newfoundland.  Wild-caught, skin-on, Atlantic cod. Product of Canada. Sold per pound, portions are cut in varying sizes.  Typically 1-3 portions per pound.";
  String characteristic = "Product characteristic";
  String stock = "10";

  String getId(){
    return widget.productId;
  }

  String selected = "Sustainably caught in a small artisanal fishery off the coast of Fogo Island, Newfoundland.  Wild-caught, skin-on, Atlantic cod. Product of Canada. Sold per pound, portions are cut in varying sizes.  Typically 1-3 portions per pound.";
  int selectedBtn = 0;


  Widget getButton(){

    TextStyle activate = TextStyle(color: Color.fromRGBO(240, 111, 83, 1));
    TextStyle unactivate = TextStyle(color: Color.fromRGBO(161, 161, 161, 1));

    List<TextStyle> btn = List<TextStyle>();
    for(int i = 0; i<3; i++){
      if(i==selectedBtn){
        btn.add(activate);
      }
      else{
        btn.add(unactivate);
      }
    }

    List<Widget> btnR = List<Widget>();
    for(int i = 0; i<3; i++){
      if(i==selectedBtn){
        btnR.add(Column(
          children: [
            SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(240, 111, 83, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              width: 5,
              height: 5,
            )
          ],
        ));
      }
      else{
        btnR.add(SizedBox());
      }
    }

    return Row(
      children: [
        MaterialButton(
          onPressed: (){
            setState(() {
              selected = description;
              selectedBtn = 0;
            });
          },
          child: Column(
            children: [
              Text('Description', style: btn[0],),
              btnR[0],
            ],
          ),
        ),
        MaterialButton(
          onPressed: (){
            setState(() {
              selected = characteristic;
              selectedBtn = 1;
            });
          },
          child: Column(
            children: [
              Text('Characteristic', style: btn[1],),
              btnR[1],
            ],
          ),
        ),
        MaterialButton(
          onPressed: (){
            setState(() {
              selected = stock;
              selectedBtn = 2;
            });
          },
          child: Column(
            children: [
              Text('Stock', style: btn[2],),
              btnR[2],
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                  height: 237,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(color: Color.fromRGBO(255, 255, 255, 0.10), spreadRadius: 20),
                    ],
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius:  new BorderRadius.only(
                          bottomRight: const Radius.circular(25.0),
                        ),
                        child: Image.asset(
                            imgPath,
                            height:237.0,
                            width :MediaQuery.of(context).size.width,
                            fit: BoxFit.fitWidth),
                      ),
                      Center(
                        child: Text(
                          title,
                          style: TextStyle(color: Colors.white,fontSize: 30,decoration: TextDecoration.none),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.only(
                                  topRight: const Radius.circular(30.0),
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
                              child: Text(
                                price,
                                style: TextStyle(fontSize: 18,color: Color.fromRGBO(44, 57, 65, 1), decoration: TextDecoration.none,fontWeight: FontWeight.w400),
                              ),
                            )
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 0.3),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 20, 20),
                child: getButton()
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text(
                      selected,
                    style: TextStyle(fontSize: 15,color: Color.fromRGBO(110, 126, 135, 1)),
                  )),
            ],
          ),
        ),
        bottomNavigationBar: Navbar(index: 0,),
      ),
    );
  }
}
