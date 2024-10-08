import 'package:get/get.dart';
import 'package:shopping_card_application/model/cart_items_model.dart';
import 'package:shopping_card_application/view/item.dart';

class ItemsController extends GetxController {
  RxList cartItems = <Item>[].obs;
  RxDouble totalPrice =0.0.obs;

  void addToCart(Item item) {
    cartItems.add(item);
  }

  void removeFromCart(Item item) {
    cartItems.remove(item);
  }
  void calculateTotalPrice(){
    totalPrice.value=0;
    for (Item el in cartItems){
      totalPrice.value= totalPrice.value + el.price*el.quantity.value;
    }
  }
  @override
  void onInit() {
    addToCart(Item(name:"xbox", price : 600.0 , quantity : 5.obs ));
    addToCart(Item(name:"playstation", price : 800.0 , quantity : 2.obs ));
    addToCart(Item(name:"tv", price : 200.0 , quantity : 1.obs ));
    calculateTotalPrice();
    super.onInit();
  }

}