import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/constants/consts.dart';
import 'package:sample/ui/route/routes.dart';
import 'package:sample/utils/navigation_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void goToCart(BuildContext context){
    context.push(Routes.cart);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Consts.homePage),
        actions: [
          IconButton(onPressed: (){
            goToCart(context);
          }, icon: const Icon(CupertinoIcons.cart))
        ],
      ),
      body: const Center(
        child: Icon(CupertinoIcons.home),
      ),
    );
  }
}
