import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Type of Widgets
/// 1. Stateless Widgets (UI)
/// 2. Stateful Widgets (UI)
/// 3. Inherited Widgets

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    ); 
  }
}