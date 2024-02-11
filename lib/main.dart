import 'package:flutter/material.dart';
import 'package:xf/screens/login.dart'; // Importer l'écran de connexion ici

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialColor primaryColor = Colors.teal; // Choisir votre couleur primaire ici

    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: primaryColor, // Utiliser la couleur primaire
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(), // Afficher l'écran de connexion au démarrage de l'application
    );
  }
}
