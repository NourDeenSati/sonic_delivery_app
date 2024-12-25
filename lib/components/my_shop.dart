// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sonic_delivery_app/components/my_item.dart';
import 'package:sonic_delivery_app/screens/shop_view_screen.dart';

class Shop extends StatelessWidget {
  String image;
  String name;
  List<Item> shopItem;
  // Function moveToElements;
  Shop({
    Key? key,
    required this.shopItem,
    required this.image,
    required this.name,
    // required this.moveToElements,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShopViewScreen(shop: this),
          )),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            
            boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 1, // Spread of the shadow
              blurRadius: 5, // Blurring of the shadow
              offset: Offset(2, 2), // Position of the shadow (x, y)
            ),
          ],  color: Theme.of(context).colorScheme.tertiary, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Container(
                height: 130,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(name,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.inversePrimary,
                                fontSize: 16,
                                fontFamily: 'Raleway',
                                )),
                      ],
                    ),
                  ),
                  Spacer(),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
