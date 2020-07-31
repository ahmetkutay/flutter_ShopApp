import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

// ignore: must_be_immutable
class ProductListRowWidget extends StatelessWidget {
  Product products;

  ProductListRowWidget(this.products);

  @override
  Widget build(BuildContext context) {
    return productItemCard(context);
  }

  Widget productItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                  "https://cdn.yemek.com/mncrop/500/333/uploads/2017/11/orta-pismis-et.jpg"),
              height: 130.0,
              width: MediaQuery.of(context).size.width / 2,
            ),
            Text(products.productName),
            Text(products.unitPrice.toString()),
          ],
        ),
      ),
    );
  }
}
