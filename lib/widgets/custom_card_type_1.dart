import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading:
                Icon(Icons.photo_album_rounded, color: AppTheme.primaryColor),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Ad in mollit in minim elit occaecat eiusmod ea occaecat aliquip commodo. Reprehenderit duis eu incididunt sunt irure reprehenderit enim id dolor dolor velit. Proident et excepteur commodo reprehenderit qui culpa pariatur ipsum fugiat consequat elit.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Ok')),
                TextButton(onPressed: () {}, child: const Text('Cancel')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
