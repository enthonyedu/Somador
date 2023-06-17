import 'package:flutter/material.dart';

Padding mainTitle({String text = ''}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
