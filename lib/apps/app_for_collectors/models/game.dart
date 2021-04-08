import 'dart:math';

import '../utils/images.dart';
import './console.dart';

class Game {
  Game(
      {this.id,
      this.name,
      this.rating,
      this.image,
      this.consoleId,
      this.percent,
      this.people});
  int? id;
  String? name;
  int? rating;
  String? image;
  int? percent;
  int? people;
  int? consoleId;
}

int? switchId = consoles[0].id;
int? ps4Id = consoles[1].id;
int? xboxOneId = consoles[2].id;
int? gbaId = consoles[3].id;

final minPeople = 5;
final maxPeople = 10;

final minPercent = 75;
final maxPercent = 100;

final minRating = 3;
final maxRating = 6;

int randomNumber({required int min, required int max}) {
  final _random = new Random();
  return min + _random.nextInt(max - min);
}

List<Game> games = [
  // GBA
  Game(
      id: 1,
      name: 'Metal Slug',
      image: appForCollectorsImages['metalslug'],
      rating: randomNumber(min: minRating, max: maxRating),
      percent: randomNumber(min: minPercent, max: maxPercent),
      people: randomNumber(min: minPeople, max: maxPeople),
      consoleId: gbaId),
  Game(
    id: 2,
    name: 'Digimon Battle Spirit',
    image: appForCollectorsImages['digimon'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: gbaId,
  ),
  Game(
    id: 3,
    name: 'Metroid: Zero Mission',
    image: appForCollectorsImages['metroid'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: gbaId,
  ),
  Game(
    id: 4,
    name: 'Sonic Advance',
    image: appForCollectorsImages['sonic'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: gbaId,
  ),
  Game(
    id: 5,
    name: 'The Legend of Zelda: The Minish Cap',
    image: appForCollectorsImages['zeldagb'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: gbaId,
  ),
  // PS4
  Game(
    id: 6,
    name: 'Days Gone',
    image: appForCollectorsImages['daysgone'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 7,
    name: 'Bloodborne',
    image: appForCollectorsImages['bloodborne'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 8,
    name: 'The Last of Us',
    image: appForCollectorsImages['tlous'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 9,
    name: 'The Last of Us Part II',
    image: appForCollectorsImages['tlous2'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 10,
    name: 'God of War',
    image: appForCollectorsImages['gow'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 11,
    name: 'Horizon Zero Dawn',
    image: appForCollectorsImages['horizonzd'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  Game(
    id: 12,
    name: 'Uncharted 4: A Thief\'s End',
    image: appForCollectorsImages['uncharted4'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: ps4Id,
  ),
  // Switch
  Game(
    id: 13,
    name: 'Yoshi\'s Crafted World',
    image: appForCollectorsImages['yoshi'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),
  Game(
    id: 14,
    name: 'Super Mario Odyssey',
    image: appForCollectorsImages['marioodyssey'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),
  Game(
    id: 15,
    name: 'Crash Team Racing Nitro-Fueled',
    image: appForCollectorsImages['crash'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),
  Game(
    id: 16,
    name: 'The Legend of Zelda: Breath of the Wild',
    image: appForCollectorsImages['zeldabow'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),
  Game(
    id: 17,
    name: 'Mario + Rabbids Kingdom Battle',
    image: appForCollectorsImages['mariorabbits'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: switchId,
  ),

  // Xbox One
  Game(
    id: 18,
    name: 'Gears of War 4',
    image: appForCollectorsImages['gears4'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),
  Game(
    id: 19,
    name: 'Halo: The Master Chief Collection',
    image: appForCollectorsImages['halo'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),
  Game(
    id: 20,
    name: 'Assassin\'s Creed IV: Black Flag',
    image: appForCollectorsImages['blackflag'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),
  Game(
    id: 21,
    name: 'Final Fantasy XV',
    image: appForCollectorsImages['ffxv'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),
  Game(
    id: 22,
    name: 'Middle-earth: Shadow of War',
    image: appForCollectorsImages['shadowwar'],
    rating: randomNumber(min: minRating, max: maxRating),
    percent: randomNumber(min: minPercent, max: maxPercent),
    people: randomNumber(min: minPeople, max: maxPeople),
    consoleId: xboxOneId,
  ),
];
