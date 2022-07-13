import 'package:amazon_clone_flutter/constants/global_variables.dart';
import 'package:amazon_clone_flutter/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // TEMP products images
  List list = [
    'https://www.yankodesign.com/images/design_news/2022/03/these-2022-macbook-air-renders-could-be-the-most-accurate-pictures-of-how-the-new-device-will-look/2022-MacBook-Air-renders-13.jpg',
    'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-pro-silver-select?wid=470&hei=556&fmt=jpeg&qlt=95&.v=1645552345849',
    'https://i.gadgets360cdn.com/products/large/Acer-nitro-5-intel-DB-995x800-1618226243.jpg?downsize=*:360',
    'https://blogger.googleusercontent.com/img/a/AVvXsEjl60rfrSGB30l8i6qyGpNpSvtrWVYBnwfjBu3X1I7yaoNub-nC2ZqPGfhNdolZ5ZPSqQeolD4scXp_qYhR_37HygrZ18HSX_tiUxiN28TIfyLCA-FN0Y3C9hYHF5YRY0AfbtgjXuukxH1gyvTBVp6kUyx4iM9khhUXy6pZDz5_vSyeGCS5UzTDQt2qvA=w320-h320',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                "Your Orders",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                "See more",
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) => SingleProduct(
              image: list[index],
            ),
          ),
        ),
      ],
    );
  }
}
