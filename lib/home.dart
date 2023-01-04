import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Widget'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              //Memperbesar gambar saat di klik
              Navigator.push(context,
               MaterialPageRoute(builder: (context) => const Mobil1()));
            },
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ListTile(
                    leading: Hero(
                      tag: 'foto1', 
                      child:Image('foto/foto1.jpg'),

                      child: AssetImage('foto/foto1.jpg'),

                      ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}