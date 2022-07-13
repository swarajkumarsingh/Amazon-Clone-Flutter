import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  final String tempImageUrl =
      "https://m.media-amazon.com/images/I/71vFKBpKakL._AC_SL1500_.jpg";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: const Text(
            "Deal of the day",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          tempImageUrl,
          height: 235,
          fit: BoxFit.fitHeight,
          width: double.infinity,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            "\$799.0",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            "Mac Book Air - Golden Color",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                tempImageUrl,
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                tempImageUrl,
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                tempImageUrl,
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                tempImageUrl,
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 15,
            bottom: 15,
            top: 15,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            "See All Deals",
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        )
      ],
    );
  }
}
