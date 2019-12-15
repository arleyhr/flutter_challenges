import 'dart:math';
import 'package:app_for_collectors/models/console.dart';

class Game {
  Game({ this.id, this.name, this.rating, this.image, this.consoleId, this.percent, this.people });
  int id;
  String name;
  int rating;
  String image;
  int percent;
  int people;
  int consoleId;
}

int switchId = consoles[0].id;
int ps4Id = consoles[1].id;
int xboxOneId = consoles[2].id;
int gbaId = consoles[3].id;

final minPeople = 5;
final maxPeople = 10;

final minPercent = 75;
final maxPercent = 100;

final minRating = 3;
final maxRating = 6;

int randomNumber ({int min, int max}) {
  final _random = new Random();
  return min + _random.nextInt(max - min);
}

List<Game> games = [
  // GBA
  Game(
    id: 1,
    name: 'Metal Slug',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/MetalSlug1_cover.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: gbaId
  ),
  Game(
    id: 2,
    name: 'Digimon Battle Spirit',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/digimon.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: gbaId,
  ),
  Game(
    id: 3,
    name: 'Metroid: Zero Mission',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/metroid.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: gbaId,
  ),
  Game(
    id: 4,
    name: 'Sonic Advance',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/sonic.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: gbaId,
  ),
  Game(
    id: 5,
    name: 'The Legend of Zelda: The Minish Cap',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/zeldagb.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: gbaId,
  ),
  // PS4
  Game(
    id: 6,
    name: 'Days Gone',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/daysgone.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 7,
    name: 'Bloodborne',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/bloodborne.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 8,
    name: 'The Last of Us',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/tlou.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 9,
    name: 'The Last of Us Part II',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/tlou2.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 10,
    name: 'God of War',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/gow.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 11,
    name: 'Horizon Zero Dawn',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/horizon.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 12,
    name: 'Uncharted 4: A Thief\'s End',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/uncharted.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  // Switch
  Game(
    id: 13,
    name: 'Yoshi\'s Crafted World',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/yoshi.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),
  Game(
    id: 14,
    name: 'Super Mario Odyssey',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/mario-odyssey.jpeg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),
  Game(
    id: 15,
    name: 'Crash Team Racing Nitro-Fueled',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/crash.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),
  Game(
    id: 16,
    name: 'The Legend of Zelda: Breath of the Wild',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/zelda.webp?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),
  Game(
    id: 17,
    name: 'Mario + Rabbids Kingdom Battle',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/mario-rabbids.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),

  // Xbox One
  Game(
    id: 18,
    name: 'Gears of War 4',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/gears.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),
  Game(
    id: 19,
    name: 'Halo: The Master Chief Collection',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/halo.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),
  Game(
    id: 20,
    name: 'Assassin\'s Creed IV: Black Flag',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/black-flag.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),
  Game(
    id: 21,
    name: 'Final Fantasy XV',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/final-fantasy-xv_3.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),
  Game(
    id: 22,
    name: 'Middle-earth: Shadow of War',
    image: 'https://github.com/arleyhr/flutter_challenges/blob/develop/app_for_collectors/assets/shadow.jpg?raw=true',
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),

];
