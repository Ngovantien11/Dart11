class Order {
  late String item;
  late String itemName;
  late int price;
  late String currency;
  late int quantity;

  Order({required this.item, required this.itemName, required this.price, required this.currency, required this.quantity});
  Order.create({required this.itemName, required this.price, required this.currency, required this.quantity});

  Order.fromJson(Map<String, dynamic> json) {
    item = json['item'];
    itemName = json['itemName'];
    price = json['price'];
    currency = json['currency'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['item'] = item;
    data['itemName'] = itemName;
    data['price'] = price;
    data['currency'] = currency;
    data['quantity'] = quantity;
    return data;
  }
}