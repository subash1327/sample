import 'package:flutter/material.dart';
import 'package:sample/ui/pages/cart/cart_page.dart';
import 'package:sample/ui/pages/home/home_page.dart';
import 'routes.dart';

class MRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home: return route(const HomePage(), settings);
      case Routes.cart: return route(const CartPage(), settings);
      default:
        return route(
            const Scaffold(
              body: Center(
                child: Text('Route not found'),
              ),
            ),
            settings);
    }
  }

  static Route route(Widget page, RouteSettings settings) {
    return MaterialPageRoute(
        builder: (c) {
          return page;
        },
        settings: settings);
  }
}
