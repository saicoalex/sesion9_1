import 'package:flutter/material.dart';
import 'package:sesion9/preferences/preferences.dart';
import 'package:sesion9/widges/index.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuracion'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomTextFielWidget(
              initialValue: Preferences.img,
              keyboarType: TextInputType.text,
              hintText: 'Imagen',
              prefixedIcon: const Icon(Icons.photo),
              onChange: (value) {
                Preferences.img = value;
                setState(() {});
              },
            ),
            CustomTextFielWidget(
              initialValue: Preferences.email,
              keyboarType: TextInputType.name,
              hintText: 'Email',
              prefixedIcon: const Icon(Icons.email),
              onChange: (value) {
                Preferences.email = value;
                setState(() {});
              },
            ),
            CustomTextFielWidget(
              initialValue: Preferences.numero,
              keyboarType: TextInputType.number,
              hintText: 'Numero',
              prefixedIcon: const Icon(Icons.numbers),
              onChange: (value) {
                Preferences.numero = value;
                setState(() {});
              },
            ),
            CustomTextFielWidget(
              initialValue: Preferences.nombre,
              keyboarType: TextInputType.name,
              hintText: 'Nombre',
              prefixedIcon: const Icon(Icons.person),
              onChange: (value) {
                Preferences.nombre = value;
                setState(() {});
              },
            ),
            CustomTextFielWidget(
              initialValue: Preferences.apellido,
              keyboarType: TextInputType.name,
              hintText: 'Apellido',
              prefixedIcon: const Icon(Icons.person),
              onChange: (value) {
                Preferences.apellido = value;
                setState(() {});
              },
            ),
            CustomTextFielWidget(
              initialValue: Preferences.ciudad,
              keyboarType: TextInputType.name,
              hintText: 'Ciudad',
              prefixedIcon: const Icon(Icons.location_city),
              onChange: (value) {
                Preferences.ciudad = value;
                setState(() {});
              },
            ),
            CustomTextFielWidget(
              initialValue: Preferences.pais,
              keyboarType: TextInputType.text,
              hintText: 'Pais',
              prefixedIcon: const Icon(Icons.local_airport_sharp),
              onChange: (value) {
                Preferences.pais = value;
                setState(() {});
              },
            ),
            RadioListTile(
              activeColor: Colors.green,
              value: 1,
              groupValue: Preferences.genero,
              title: const Text('Masculino'),
              onChanged: (value) {
                Preferences.genero = value ?? 1;
                setState(() {});
              },
            ),
            RadioListTile(
              activeColor: Colors.green,
              value: 2,
              groupValue: Preferences.genero,
              title: const Text('Femenino'),
              onChanged: (value) {
                Preferences.genero = value ?? 2;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
