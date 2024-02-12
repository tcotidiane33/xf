import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final SearchController controller;
  final MaterialStateProperty<EdgeInsets> padding;
  final Function onTap;
  final Function onChanged;
  final Widget leading;
  final List<Widget> trailing;

  const SearchBar({
    Key? key,
    required this.controller,
    required this.padding,
    required this.onTap,
    required this.onChanged,
    required this.leading,
    required this.trailing,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding.resolve({}),
      child: TextField(
        controller: widget.controller.textController,
        onTap: () {
          widget.onTap();
        },
        onChanged: (_) {
          widget.onChanged();
        },
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: widget.leading,
          suffixIcon: widget.trailing.isNotEmpty
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: widget.trailing,
                )
              : null,
        ),
      ),
    );
  }
}

class SearchController {
  final TextEditingController textController = TextEditingController();

  void openView() {
    // Logique pour ouvrir la vue de recherche
    print('Vue de recherche ouverte');
  }

  void closeView(String selectedItem) {
    // Logique pour fermer la vue de recherche avec l'élément sélectionné
    print('Vue de recherche fermée avec l\'élément sélectionné : $selectedItem');
  }
}

// Fonction appelée lors du changement de mode de luminosité
void changeBrightnessMode(BuildContext context, bool isDarkMode) {
  // Logique pour changer le mode de luminosité
  ThemeMode mode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Mode de luminosité changé')),
  );
  // Appliquer le nouveau mode de luminosité à l'ensemble de l'application
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => MyApp(themeMode: mode)),
      (route) => false,
    );
  });
}


class MyApp extends StatelessWidget {
  final ThemeMode themeMode;

  const MyApp({Key? key, required this.themeMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        // Définir le thème clair
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // Définir le thème sombre
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Changer de mode de luminosité'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              changeBrightnessMode(context, themeMode == ThemeMode.light);
            },
            child: Text('Changer de mode de luminosité'),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp(themeMode: ThemeMode.light));
}
