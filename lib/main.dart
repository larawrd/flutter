import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart'; // Importa la clase generada para las traducciones
import 'package:intl/intl.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'city_list_screen.dart';
import 'shopping_screen.dart'; // Importa la pantalla de compras

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Red Social',
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 255, 115, 115),
      ),
      // Agrega las siguientes líneas para la internacionalización
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // Inglés
        const Locale('es', ''), // Español
        const Locale('ru', ''), // Ruso
      ],
      // Fin de la configuración de internacionalización
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => SplashScreen(), // Ruta para la pantalla de inicio
        '/login': (context) => LoginScreen(), // Ruta para la pantalla de inicio de sesión
        '/cityList': (context) => CityListScreen(), // Ruta para la pantalla de lista de ciudades
        '/shopping': (context) => ShoppingScreen(), // Nueva ruta para la pantalla de compras
      },
    );
  }
}
