import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    leading: const Icon(Icons.calculate),
    title: const Text(
      "Somador",
      style: TextStyle(fontSize: 20),
    ),
    backgroundColor: Color.fromARGB(255, 49, 86, 173),
  );
}
