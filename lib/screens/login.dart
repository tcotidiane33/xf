import 'package:flutter/material.dart';
import 'package:xf/screens/home.dart'; // Importer home.dart
import 'package:xf/screens/signup.dart'; // Importer signup.dart

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Adresse e-mail ou nom d\'utilisateur'),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Mot de passe'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique de connexion
                // Redirection vers la page home une fois connecté
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Connexion'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Logique pour la récupération du mot de passe
                // Peut être une autre page ou une boîte de dialogue
              },
              child: Text('Mot de passe oublié'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Redirection vers la page d'inscription
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Text('S\'inscrire'),
            ),
          ],
        ),
      ),
    );
  }
}
