import 'package:flutter/material.dart';

const baseUrl = "https://res.cloudinary.com/arleyhr/image/upload";

const travelAppImagesList = {
  "slider1":
      "$baseUrl/v1617842827/flutter/tourism_app_concept/slider1_lpqg6z.png",
  "slider2":
      "$baseUrl/v1617842828/flutter/tourism_app_concept/slider2_pmaf91.png",
  "slider3":
      "$baseUrl/v1617842829/flutter/tourism_app_concept/slider3_hqcmcn.png",
  "slider4":
      "$baseUrl/v1617842830/flutter/tourism_app_concept/slider4_afn24n.png",
  "slider5":
      "$baseUrl/v1617842830/flutter/tourism_app_concept/slider5_kpojir.png",
  "slider6":
      "$baseUrl/v1617842832/flutter/tourism_app_concept/slider6_pjlj6t.png",
  "cactus":
      "$baseUrl/v1617842820/flutter/tourism_app_concept/icons/cactus_nuvs3e.png",
  "menu":
      "$baseUrl/v1617842821/flutter/tourism_app_concept/icons/menu_zrjxlo.png",
  "mountain-summit":
      "$baseUrl/v1617842823/flutter/tourism_app_concept/icons/mountain-summit_frlffd.png",
  "orion-sun-lounger":
      "$baseUrl/v1617842824/flutter/tourism_app_concept/icons/orion-sun-lounger_xnzqjk.png",
  "snow":
      "$baseUrl/v1617842825/flutter/tourism_app_concept/icons/snow_rtwogy.png",
};

var travelAppImages = {
  "slider1": NetworkImage(travelAppImagesList["slider1"]!),
  "slider2": NetworkImage(travelAppImagesList["slider2"]!),
  "slider3": NetworkImage(travelAppImagesList["slider3"]!),
  "slider4": NetworkImage(travelAppImagesList["slider4"]!),
  "slider5": NetworkImage(travelAppImagesList["slider5"]!),
  "slider6": NetworkImage(travelAppImagesList["slider6"]!),
  "cactus": NetworkImage(travelAppImagesList["cactus"]!),
  "menu": NetworkImage(travelAppImagesList["menu"]!),
  "mountain-summit": NetworkImage(travelAppImagesList["mountain-summit"]!),
  "orion-sun-lounger": NetworkImage(travelAppImagesList["orion-sun-lounger"]!),
  "snow": NetworkImage(travelAppImagesList["snow"]!),
};

var travelAppPlaces = [
  travelAppImagesList["slider1"],
  travelAppImagesList["slider2"],
  travelAppImagesList["slider3"],
  travelAppImagesList["slider4"]
];

var travelAppRelatedPlaces = [
  travelAppImagesList["slider6"],
  travelAppImagesList["slider5"],
  travelAppImagesList["slider4"],
  travelAppImagesList["slider1"],
  travelAppImagesList["slider2"],
  travelAppImagesList["slider3"],
];
