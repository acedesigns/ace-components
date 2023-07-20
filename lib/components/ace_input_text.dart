/* =======================================================
 *
 * Created by anele on 18/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */


import 'package:flutter/material.dart';

class AceInputText extends StatelessWidget {

  final dynamic controller;
  final String hintText;
  final bool obscureText;
  final double? myPadding;
  final String? Function(String?)? validator;
  

  const AceInputText({
    super.key,
    required this.hintText,
    required this.controller,
    required this.obscureText,
    this.myPadding,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(fontSize: 13, color: Colors.white),
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          icon: const Icon(Icons.person),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: const Color.fromARGB(255, 60, 87, 96),
          hintStyle: const TextStyle(color: Colors.white, fontSize: 13),
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
        validator: validator,
      ),
    );
  }
}
