import 'package:arquitetura/core/inject/inject.dart';
import 'package:arquitetura/layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarroPage(),
    ),
  );
}
