import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Item {
  final String name;
  final double price;
  final RxInt quantity;

  Item({required this.name, required this.price, required this.quantity});
}