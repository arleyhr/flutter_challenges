class Coffee {
  int id;
  String name;
  String image;
  double price;

  Coffee(
      {required this.id,
      required this.name,
      required this.image,
      required this.price});
}

List<Coffee> coffees = [
  new Coffee(
      id: 1,
      name: "Caramel Macchiato",
      image: "assets/fika/1.png",
      price: 2.99),
  new Coffee(id: 8, name: "Americano", image: "assets/fika/8.png", price: 1.99),
  new Coffee(
      id: 9,
      name: "Vietnamese-Style Iced Coffee",
      image: "assets/fika/9.png",
      price: 3.99),
  new Coffee(
      id: 7,
      name: "Toffee Nut Iced Lattee",
      image: "assets/fika/7.png",
      price: 3.29),
  new Coffee(
      id: 2,
      name: "Caramel Cold Drink",
      image: "assets/fika/2.png",
      price: 2.49),
  new Coffee(
      id: 3, name: "Iced Coffe Mocha", image: "assets/fika/3.png", price: 3.49),
  new Coffee(
      id: 4,
      name: "Caramelized Pecan Latte",
      image: "assets/fika/4.png",
      price: 1.99),
  new Coffee(
      id: 5, name: "Toffee Nut Latte", image: "assets/fika/5.png", price: 3.49),
  new Coffee(id: 6, name: "Capuchino", image: "assets/fika/6.png", price: 1.99),
  new Coffee(
      id: 10,
      name: "Black Tea Latte",
      image: "assets/fika/10.png",
      price: 3.49),
  new Coffee(
      id: 11,
      name: "Classic Irish Coffeee",
      image: "assets/fika/11.png",
      price: 2.49),
  new Coffee(
      id: 12,
      name: "Toffee Nut Crunch Latte",
      image: "assets/fika/12.png",
      price: 1.99),
];
