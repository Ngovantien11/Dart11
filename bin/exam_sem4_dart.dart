import 'package:exam_sem4_dart/model/order.dart';
import 'package:exam_sem4_dart/service/order_service.dart';

void main(List<String> arguments) {
  // get orders
  OrderService.getOrders().then((value) {
    print("List of orders");
    value.forEach((element) {
      print("name: "+element.itemName );
    });
  });
  // create
  OrderService.createOrder(Order.create(itemName: "Iphone 17",price: 2200,currency:Currency.USD.name,quantity:10)).then((value) => print(value));

  // search

  OrderService.searchOrder("Iphone").then((value) {
    print("search orders");
    value.forEach((element) {
      print(element.itemName);
    });
  });
}
