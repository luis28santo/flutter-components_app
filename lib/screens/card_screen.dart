import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

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
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/XZBB6JZSVZFTBANAUJVCC7VQX4.jpg',
            // name: 'Un Hermoso paisaje',
          ),
        ],
      ),
    );
  }
}
