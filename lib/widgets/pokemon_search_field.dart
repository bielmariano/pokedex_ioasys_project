import 'package:flutter/material.dart';

class PokemonSearchField extends StatelessWidget {
  final String labelText;
  final String hintText;

  const PokemonSearchField({
    Key? key,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: const TextStyle(color: Color(0XFF666666)),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0XFFEC0344), width: 2),
              borderRadius: BorderRadius.circular(10.0)),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0XFFEC0344), width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 22, color: Color(0XFFEC0344)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0XFF666666)),
        ));
  }
}
