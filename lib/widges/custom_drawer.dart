import 'package:flutter/material.dart';
import 'package:sesion9/screen/index.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2019/12/11/18/06/snowman-4688913__340.jpg'),
              ),
            ),
            child: Center(
              child: Text(
                'Hello world',
                style: TextStyle(fontSize: 26, color: Colors.yellow),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.inbox),
            title: const Text('All inboxes'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Primary'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Social'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_offer),
            title: const Text('Promocions'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            // leading: const Icon(Icons.local_offer),
            title: const Text('All labels',
                style: TextStyle(fontSize: 22, fontFamily: 'RobotoMono')),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Starred'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.label_important),
            title: const Text('Important'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Config'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConfigScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Perfil'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MiperilScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.send),
            title: const Text('Sent'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MiperilScreen()),
              );
            },
          )
        ],
      ),
    );
  }
}
