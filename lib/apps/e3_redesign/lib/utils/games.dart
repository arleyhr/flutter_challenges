
import 'dart:core';

import 'package:e3_redesign/utils/images.dart';

class Game {
  final String? name;
  final String? release;
  final String? description;
  final String? image;
  final String? cover;
  final String? platform;
  final String? gameId;
  final String? likes;
  final String? exclusiveLogo;
  final double? titleWidth;
  Game({ this.name, this.release, this.cover, this.description, this.likes, this.image, this.gameId, this.platform, this.exclusiveLogo, this.titleWidth });
}

List<Game> games = [
  new Game(
    gameId: 'gears',
    name: 'GEARS 5',
    description: 'Day of premier on september 10 2019',
    image: e3RedesignImages['gears'],
    cover: e3RedesignImages['gears_cover'],
    platform: "PC / XBOX",
    exclusiveLogo: e3RedesignImages['xbox'],
    likes: "69",
    release: "SEPTEMBER 10 2019",
    titleWidth: 0
  ),
  new Game(
    gameId: 'cyberpunk',
    name: 'CYBERPUNK 2077',
    description: 'Date of premiere on april 16 2020',
    image: e3RedesignImages['cyberpunk'],
    cover: e3RedesignImages['cyberpunk_cover'],
    platform: "PS4 / XBOX / PC",
    likes: "55",
    release: "APRIL 16 2020",
    titleWidth: 84
  ),
];