import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_card_application/controller/cart_items_controller.dart';
import 'package:shopping_card_application/view/item.dart';

class CartItemsPage extends StatelessWidget {
  CartItemsPage({super.key});

  ItemsController controller = Get.find<ItemsController>();

  @override
  Widget build(BuildContext context) {
    List cartItems = controller.cartItems;
    print(cartItems);
    return  Container(
      height: 400,
      child:  ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ItemView(name: cartItems[index].name,price: cartItems[index].price,quantity: cartItems[index].quantity);
        }
        )
    );
  }
}
