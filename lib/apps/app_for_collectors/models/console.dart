class Console {
  int id;
  String name;
  String image;
  int totalGames;
  Console({ this.image, this.name, this.totalGames, this.id });
}

List<Console> consoles = [
  Console(id: 1, name: 'Nintendo Switch', image: 'switch.png', totalGames: 45),
  Console(id: 2, name: 'Sony PlayStation 4', image: 'ps4.png', totalGames: 102),
  Console(id: 3, name: 'Microsoft Xbox One', image: 'xbox.png', totalGames: 15),
  Console(id: 4, name: 'Nintendo \nGB Advance', image: 'gameboy.png', totalGames: 36),
];