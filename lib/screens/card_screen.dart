import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.photo_album_rounded,
                      color: AppTheme.primaryColor),
                  title: Text('Soy un titulo'),
                  subtitle: Text(
                      'Ad in mollit in minim elit occaecat eiusmod ea occaecat aliquip commodo. Reprehenderit duis eu incididunt sunt irure reprehenderit enim id dolor dolor velit. Proident et excepteur commodo reprehenderit qui culpa pariatur ipsum fugiat consequat elit.'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
