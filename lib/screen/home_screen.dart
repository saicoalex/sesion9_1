import 'package:flutter/material.dart';
import 'package:sesion9/widges/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: const Center(
        child: Text(
          'Welcome',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
