import 'package:flutter/material.dart';
import 'package:sonic_delivery_app/screens/home_screen.dart';
import 'package:sonic_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const SonicDelivery(),
      
    ),
  );
}

class SonicDelivery extends StatelessWidget {
  const SonicDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const HomePage(),
    );
  }
}
