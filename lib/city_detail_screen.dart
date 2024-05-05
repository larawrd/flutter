import 'package:flutter/material.dart';

class CityDetailScreen extends StatelessWidget {
  final Map<String, dynamic> cityData;
  final VoidCallback onCityDelete;

  CityDetailScreen({required this.cityData, required this.onCityDelete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cityData['name']),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Eliminar Ciudad'),
                content: Text('¿Estás seguro de que quieres eliminar esta ciudad?'),
                actions: [
                  TextButton(
                    child: Text('Cancelar'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: Text('Eliminar'),
                    onPressed: onCityDelete,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              cityData['image'],
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              cityData['information'],
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
