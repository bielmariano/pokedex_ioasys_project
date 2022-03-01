import 'package:flutter/material.dart';

class PokemonColorTypeController {
  pokemonColor(String type) {
    if (type == 'fire') {
      return Color(0XFFF57D31);
    } else if (type == 'rock') {
      return Color(0XFFB69E31);
    } else if (type == 'ghost') {
      return Color(0XFF70559B);
    } else if (type == 'steel') {
      return Color(0XFFB7B9D0);
    } else if (type == 'water') {
      return Color(0XFF6493EB);
    } else if (type == 'grass') {
      return Color(0XFF74CB48);
    } else if (type == 'psychic') {
      return Color(0XFFFB5584);
    } else if (type == 'ice') {
      return Color(0XFF9AD6DF);
    } else if (type == 'dark') {
      return Color(0XFF75574C);
    } else if (type == 'fairy') {
      return Color(0XFFE69EAC);
    } else if (type == 'normal') {
      return Color(0XFFAAA67F);
    } else if (type == 'fighting') {
      return Color(0XFFC12239);
    } else if (type == 'flying') {
      return Color(0XFFA891EC);
    } else if (type == 'poison') {
      return Color(0XFFA43E9E);
    } else if (type == 'ground') {
      return Color(0XFFDEC16B);
    } else if (type == 'bug') {
      return Color(0XFFA7B723);
    } else if (type == 'electric') {
      return Color(0XFFF9CF30);
    } else if (type == 'dragon') {
      return Color(0XFF7037FF);
    } else {
      return Colors.blue;
    }
  }
}
