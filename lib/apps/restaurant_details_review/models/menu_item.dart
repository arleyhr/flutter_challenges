class MenuItem {
  int? id;
  String? name;
  String? image;
  MenuItem({this.id, this.name, this.image});
}

final imagePrefix = 'https://res.cloudinary.com/arleyhr/image/upload';

List<MenuItem> menuItems = [
  MenuItem(
      id: 1,
      name: 'Fries',
      image:
          '$imagePrefix/v1617841805/flutter/restaurant_details_review/fries_f9xo1q.png'),
  MenuItem(
      id: 2,
      name: 'Sushi',
      image:
          '$imagePrefix/v1617841810/flutter/restaurant_details_review/sushi_mukrkt.png'),
  MenuItem(
      id: 3,
      name: 'Pizza',
      image:
          '$imagePrefix/v1617841808/flutter/restaurant_details_review/pizza_nd59lz.png'),
  MenuItem(
      id: 4,
      name: 'Noodles',
      image:
          '$imagePrefix/v1617841807/flutter/restaurant_details_review/noodles_j6ueyg.png'),
  MenuItem(
      id: 5,
      name: 'Burger',
      image:
          '$imagePrefix/v1617841801/flutter/restaurant_details_review/burguer_sso3uu.png'),
  MenuItem(
      id: 6,
      name: 'Cupcake',
      image:
          '$imagePrefix/v1617841801/flutter/restaurant_details_review/cupcake_tktpmy.png'),
  MenuItem(
      id: 7,
      name: 'Eggs',
      image:
          '$imagePrefix/v1617841804/flutter/restaurant_details_review/eggs_y2yrpz.png'),
  MenuItem(
      id: 8,
      name: 'Melon',
      image:
          '$imagePrefix/v1617841806/flutter/restaurant_details_review/melon_dblgll.png')
];
