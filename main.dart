void main() {
  List<Map<String, dynamic>> order = [
    {"orderId": 1, "orderName": "cola", "price": 3},
    {"orderId": 2, "orderName": "Chips", "price": 1},
    {"orderId": 3, "price": 10},
    {"orderId": 4, "orderName": "Ice Cream", "price": 5},
    {"orderId": 5, "price": 2},
  ];

  for (int i = 0; i < order.length; i++) {
    fun(
      id: order[i]["orderId"],
      name: order[i]["orderName"],
      p: order[i]["price"],
    );
  }
}

void fun({required int id, String? name, required int p}) {
  double a = p + 0.02;

  if (name == null) {
    print("The price of the item with ID $id = $p");
  } else {
    print("The price of $name with ID $id = $p");
  }
  print("The price after tax = $a");
  print("--" * 10);
}
