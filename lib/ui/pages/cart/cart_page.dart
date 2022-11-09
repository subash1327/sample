import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/constants/consts.dart';
import 'package:sample/ui/route/routes.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  void goToCart(BuildContext context){
    Navigator.of(context).pushNamed(Routes.cart);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Consts.cart),
      ),
      body: const Center(
        child: Icon(CupertinoIcons.cart),
      ),
    );
  }
}
