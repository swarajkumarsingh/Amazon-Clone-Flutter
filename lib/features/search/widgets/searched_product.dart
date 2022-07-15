import 'package:amazon_clone_flutter/common/widgets/stars.dart';
import 'package:amazon_clone_flutter/models/product.dart';
import 'package:flutter/material.dart';

class SearchedProduct extends StatelessWidget {
  final Product product;
  const SearchedProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              Image.network(
                product.images[0],
                fit: BoxFit.fitWidth,
                height: 135,
                width: 135,
              ),
              Column(
                children: [
                  Container(
                    width: 235,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      product.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                      width: 235,
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: const Stars(rating: 4)),
                  Container(
                    width: 235,
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 5,
                    ),
                    child: Text(
                      "\$${product.price}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    width: 235,
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: const Text(
                      // product.price > 6.5 ? "Eligible for FREE shipping" : "Eligible for FREE shipping",
                      "Eligible for FREE shipping",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    width: 235,
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: const Text(
                      "In Stock",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
