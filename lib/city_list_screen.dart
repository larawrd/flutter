import 'package:flutter/material.dart';
import 'city_detail_screen.dart';

class CityListScreen extends StatefulWidget {
  @override
  _CityListScreenState createState() => _CityListScreenState();
}

class _CityListScreenState extends State<CityListScreen> {
  List<Map<String, dynamic>> cities = [
    {
      'name': 'Londres',
      'image': "assets/londres.jpg",
      'information': 'Londres es la capital de Inglaterra y del Reino Unido. Es una de las ciudades más grandes y famosas del mundo.',
    },
    {
      'name': 'París',
      'image': 'assets/paris.jpg',
      'information': 'París, la capital de Francia, es una importante ciudad europea y un centro mundial del arte, la moda, la gastronomía y la cultura.',
    },
    {
      'name': 'Roma',
      'image': 'assets/rome.jpg',
      'information': 'Roma, la capital de Italia, es una ciudad antigua y enérgica que ha influido en el mundo entero y sigue siendo un centro de poder global.',
    },
  ];

  void _removeCity(String cityName) {
    setState(() {
      cities.removeWhere((city) => city['name'] == cityName);
    });
    Navigator.pop(context); // Close the dialog
    Navigator.pop(context); // Go back to the CityListScreen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Ciudades'),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> city = cities[index];
          return ListTile(
            title: Text(city['name']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CityDetailScreen(
                    cityData: city,
                    onCityDelete: () => _removeCity(city['name']),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

