import 'package:flutter/material.dart';
import 'package:localization/shopping_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart'; // Importa la clase generada para las traducciones

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.productName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$${product.productPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(product.productDescription),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Abre un diálogo para que el usuario elija el idioma
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Select Language'), // Título del diálogo
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context); // Cierra el diálogo
                          },
                          child: Text('English'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context); // Cierra el diálogo
                          },
                          child: Text('Español'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context); // Cierra el diálogo
                          },
                          child: Text('русский'),
                        ),
                      ],
                    ),
                  ),
                );
              },
    child: Text(_getChangeLanguageButtonText(context)),
            ),
          ],
        ),
      ),
    );
  }
}
