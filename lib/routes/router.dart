import 'package:amazon_clone_flutter/common/bottom_bar.dart';
import 'package:amazon_clone_flutter/features/admin/screens/add_product_screen.dart';
import 'package:amazon_clone_flutter/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_flutter/features/home/screens/category_deals_screen.dart';
import 'package:amazon_clone_flutter/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );

    case BottomBar.routeName:
      return MaterialPageRoute(
        builder: (_) => const BottomBar(),
      );

    case AddProductScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AddProductScreen(),
      );

    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        builder: (_) => CategoryDealsScreen(
          category: category,
        ),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen does not exist"),
          ),
        ),
      );
  }
}
