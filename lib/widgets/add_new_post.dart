import 'package:flutter/material.dart';

class AddNewPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Ajouter un aliment'),
                    content: Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Champs du formulaire pour l'ajout d'un aliment
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Photo de l\'aliment'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Description de l\'aliment'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Contre-produit'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'État'),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          // Logique pour soumettre le formulaire
                          Navigator.pop(context);
                        },
                        child: Text('Ajouter'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.cookie_outlined,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.emoji_food_beverage_rounded,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.fastfood_outlined,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
