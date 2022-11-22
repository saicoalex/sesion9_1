import 'package:flutter/material.dart';
import 'package:sesion9/preferences/preferences.dart';
import 'package:sesion9/widges/index.dart';

class MiperilScreen extends StatelessWidget {
  const MiperilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi perfil'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: Center(
        child: Column(
          children: [
            (Preferences.img == '')
                ? const CircleAvatar(
                    radius: 80,
                    child: Icon(
                      Icons.photo,
                      size: 50,
                    ),
                  )
                : CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(Preferences.img),
                  ),
            Text('Email: ${Preferences.email}'),
            Text('Numero: ${Preferences.numero}'),
            Text('Nombre: ${Preferences.nombre}'),
            Text('Apellido: ${Preferences.apellido}'),
            Text('Ciudad: ${Preferences.ciudad}'),
            Text('Pais: ${Preferences.pais}'),
            (Preferences.genero != 1)
                ? const Text('genero: Femenino')
                : const Text('Genero: Masculino'),
          ],
        ),
      ),
    );
  }
}
