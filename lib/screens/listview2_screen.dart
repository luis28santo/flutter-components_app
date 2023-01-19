import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
            onTap: () => print('${options[index]}'),
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios)),
        separatorBuilder: (_, __) {
          return const Divider(
            color: Colors.red,
            // height: 50.0,
          );
        },
      ),
    );
  }
}
