import 'package:flutter/material.dart';

OutlineInputBorder outLineInputBorder(raidus) {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(raidus),
  );
}
