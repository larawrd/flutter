import 'package:flutter/material.dart';
import 'package:localization/homescreen.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _userController,
                decoration: InputDecoration(labelText: 'Usuario'),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Por favor ingrese su usuario';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Por favor ingrese su contraseña';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Si la validación es exitosa, navega a HomeScreen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }
                },
                child: Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
