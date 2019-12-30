import 'package:flutter/material.dart';

const baseUrl = "https://raw.githubusercontent.com/arleyhr/flutter_challenges/develop/travel_app/lib/assets";

const travelAppImagesList = {
  "slider1": "$baseUrl/slider1.png",
  "slider2": "$baseUrl/slider2.png",
  "slider3": "$baseUrl/slider3.png",
  "slider4": "$baseUrl/slider4.png",
  "slider5": "$baseUrl/slider5.png",
  "slider6": "$baseUrl/slider6.png",
  "cactus": "$baseUrl/icons/cactus.png",
  "menu": "$baseUrl/icons/menu.png",
  "mountain-summit": "$baseUrl/icons/mountain-summit.png",
  "orion-sun-lounger": "$baseUrl/icons/orion-sun-lounger.png",
  "snow": "$baseUrl/icons/snow.png",
};

var travelAppImages = {
  "slider1": NetworkImage(travelAppImagesList["slider1"]),
  "slider2": NetworkImage(travelAppImagesList["slider2"]),
  "slider3": NetworkImage(travelAppImagesList["slider3"]),
  "slider4": NetworkImage(travelAppImagesList["slider4"]),
  "slider5": NetworkImage(travelAppImagesList["slider5"]),
  "slider6": NetworkImage(travelAppImagesList["slider6"]),
  "cactus": NetworkImage(travelAppImagesList["cactus"]),
  "menu": NetworkImage(travelAppImagesList["menu"]),
  "mountain-summit": NetworkImage(travelAppImagesList["mountain-summit"]),
  "orion-sun-lounger": NetworkImage(travelAppImagesList["orion-sun-lounger"]),
  "snow": NetworkImage(travelAppImagesList["snow"]),
};
