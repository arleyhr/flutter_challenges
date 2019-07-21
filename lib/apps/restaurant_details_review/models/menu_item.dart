class MenuItem {
  int id;
  String name;
  String image;
  MenuItem({ this.id, this.name, this.image });
}

final imagePrefix = 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/restaurant_details_review/assets/';

List<MenuItem> menuItems = [
  MenuItem(id: 1, name: 'Fries', image: '${imagePrefix}fries.png?raw=true'),
  MenuItem(id: 2, name: 'Sushi', image: '${imagePrefix}sushi.png?raw=true'),
  MenuItem(id: 3, name: 'Pizza', image: '${imagePrefix}pizza.png?raw=true'),
  MenuItem(id: 4, name: 'Noodles', image: '${imagePrefix}noodles.png?raw=true'),
  MenuItem(id: 5, name: 'Burger', image: '${imagePrefix}burguer.png?raw=true'),
  MenuItem(id: 6, name: 'Cupcake', image: '${imagePrefix}cupcake.png?raw=true'),
  MenuItem(id: 7, name: 'Eggs', image: '${imagePrefix}eggs.png?raw=true'),
  MenuItem(id: 8, name: 'Melon', image: '${imagePrefix}melon.png?raw=true')
];
