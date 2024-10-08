import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_card_application/view/cart_items_page.dart';

import 'controller/cart_items_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
//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

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  ItemsController controller = Get.put(ItemsController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          CartItemsPage(),
          Obx(() => Text(controller.totalPrice.toString())),
        ],
      ),
    );
  }
}

