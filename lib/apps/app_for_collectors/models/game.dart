import 'package:flutter_challenges/apps/app_for_collectors/models/console.dart';

class Game {
  Game({ this.name, this.rating, this.image, this.consoleId });
  String name;
  double rating;
  String image;
  int consoleId;
}

int switchId = consoles[0].id;
int ps4Id = consoles[1].id;
int xboxOneId = consoles[2].id;
int gbaId = consoles[3].id;

List<Game> games = [
  // GBA
  Game(
    name: 'Metal Slug',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/MetalSlug1_cover.jpg?raw=true',
    rating: 4.5,
    consoleId: gbaId
  ),
  Game(
    name: 'Digimon Battle Spirit',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/digimon.jpg?raw=true',
    rating: 4.3,
    consoleId: gbaId,
  ),
  Game(
    name: 'Metroid: Zero Mission',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/metroid.jpg?raw=true',
    rating: 4.5,
    consoleId: gbaId,
  ),
  Game(
    name: 'Sonic Advance',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/sonic.jpg?raw=true',
    rating: 4.5,
    consoleId: gbaId,
  ),
  Game(
    name: 'The Legend of Zelda: The Minish Cap',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/zeldagb.jpg?raw=true',
    rating: 4.5,
    consoleId: gbaId,
  ),
  // PS4
  Game(
    name: 'Days Gone',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/daysgone.jpg?raw=true',
    rating: 5,
    consoleId: ps4Id,
  ),
  Game(
    name: 'Bloodborne',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/bloodborne.jpg?raw=true',
    rating: 4.8,
    consoleId: ps4Id,
  ),
  Game(
    name: 'The Last of Us',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/tlou.jpg?raw=true',
    rating: 5,
    consoleId: ps4Id,
  ),
  Game(
    name: 'The Last of Us Part II',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/tlou2.jpg?raw=true',
    rating: 5,
    consoleId: ps4Id,
  ),
  Game(
    name: 'God of War',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/gow.jpg?raw=true',
    rating: 4.8,
    consoleId: ps4Id,
  ),
  Game(
    name: 'Horizon Zero Dawn',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/horizon.jpg?raw=true',
    rating: 4.9,
    consoleId: ps4Id,
  ),
  Game(
    name: 'Uncharted 4: A Thief\'s End',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/uncharted.jpg?raw=true',
    rating: 4.9,
    consoleId: ps4Id,
  ),
  // Switch
  Game(
    name: 'Yoshi\'s Crafted World',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/yoshi.jpg?raw=true',
    rating: 4.6,
    consoleId: switchId,
  ),
  Game(
    name: 'Super Mario Odyssey',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/mario-odyssey.jpeg?raw=true',
    rating: 5,
    consoleId: switchId,
  ),
  Game(
    name: 'Crash Team Racing Nitro-Fueled',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/crash.jpg?raw=true',
    rating: 5,
    consoleId: switchId,
  ),
  Game(
    name: 'The Legend of Zelda: Breath of the Wild',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/zelda.webp?raw=true',
    rating: 5,
    consoleId: switchId,
  ),
  Game(
    name: 'Mario + Rabbids Kingdom Battle',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/mario-rabbids.jpg?raw=true',
    rating: 4.6,
    consoleId: switchId,
  ),

  // Xbox One
  Game(
    name: 'Gears of War 4',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/gears.jpg?raw=true',
    rating: 4.6,
    consoleId: xboxOneId,
  ),
  Game(
    name: 'Halo: The Master Chief Collection',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/halo.jpg?raw=true',
    rating: 4.6,
    consoleId: xboxOneId,
  ),
  Game(
    name: 'Assassin\'s Creed IV: Black Flag',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/black-flag.jpg?raw=true',
    rating: 4.4,
    consoleId: xboxOneId,
  ),
  Game(
    name: 'Final Fantasy XV',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/final-fantasy-xv_3.jpg?raw=true',
    rating: 4.6,
    consoleId: xboxOneId,
  ),
  Game(
    name: 'Middle-earth: Shadow of War',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/lib/apps/app_for_collectors/assets/shadow.jpg?raw=true',
    rating: 4.4,
    consoleId: xboxOneId,
  ),

];
