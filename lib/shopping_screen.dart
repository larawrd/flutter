import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart'; // Importa la clase generada para las traducciones
import 'package:intl/intl.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'city_list_screen.dart';
import 'shopping_screen.dart'; // Importa la pantalla de compras

class ShoppingScreen extends StatefulWidget {
  @override
  _ShoppingScreenState createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  Locale _currentLocale = Locale('en', ''); // Establece el idioma predeterminado en inglés

  void _changeLanguage(String languageCode) {
    setState(() {
      // Cambia el idioma actual según el código de idioma proporcionado
      _currentLocale = Locale(languageCode, '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).shoppingAppBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)?.shoppingScreenMessage ?? '',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Abre un diálogo para que el usuario elija el idioma
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(AppLocalizations.of(context).languageDialogTitle),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            _changeLanguage('en'); // Cambia al inglés
                            Navigator.pop(context); // Cierra el diálogo
                          },
                          child: Text('English'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _changeLanguage('es'); // Cambia al español
                            Navigator.pop(context); // Cierra el diálogo
                          },
                          child: Text('Español'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _changeLanguage('ru'); // Cambia al ruso
                            Navigator.pop(context); // Cierra el diálogo
                          },
                          child: Text('русский'),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text(AppLocalizations.of(context)?.changeLanguageButton ?? ''),
            ),
          ],
        ),
      ),
    );
  }
}
