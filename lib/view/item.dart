import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_card_application/controller/cart_items_controller.dart';

class ItemView extends StatelessWidget {
   final String name;
   final double price;
   RxInt quantity;

  ItemView({
    required this.name,
    required this.price,
    required this.quantity,
  });

  ItemsController controller = Get.find<ItemsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(name),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {

                    quantity = quantity +1;
                    controller.calculateTotalPrice();
                },
                child: Icon(Icons.plus_one),
              ),
              Text(price.toString()), // Reactive price update
              ElevatedButton(
                onPressed: () {
                  quantity = quantity -1;
                  controller.calculateTotalPrice();
                },
                child: Icon(Icons.exposure_minus_1),
              ),
            ],
          ),
          Obx(() =>Text((price*quantity.value).toString())), // Display total price
        ],
      ),
    );
  }
}
