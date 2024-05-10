import 'package:exam_sem4_dart/constants.dart';
import 'package:exam_sem4_dart/model/order.dart';
import 'package:uuid/uuid.dart';

enum Currency{
  USD,
  EUR,
  VND
}
// List.from(json['roles']).map((e) => Roles.fromJson(e)).toList();
class OrderService {

  static Future<List<Order>> getOrders() async {
    // Fetch orders from the server
    Future.delayed(Duration(seconds: 2));
    List<Order> listOrder = Constants.orderJson.map((e) => Order.fromJson(e)).toList();
    return listOrder;
  }

  static Future<Order> createOrder(Order order) async {
    // Create order on the server
    Future.delayed(Duration(seconds: 2));
    var uuid = Uuid();
    order.item = uuid.v4();
    return order;
  }

  static Future<List<Order>> searchOrder(String name) async{
    Future.delayed(Duration(seconds: 2));
    List<Order> listOrder = Constants.orderJson.map((e) => Order.fromJson(e)).toList();
    return listOrder.where((e) => e.itemName.contains(name)).toList();
  }
}