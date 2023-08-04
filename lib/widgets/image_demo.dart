import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const ListTile(
          title: Text('Image from asset : png'),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image.asset('assets/images/p1.png'),
        ),
        const ListTile(
          title: Text('Image from asset : gif'),
        ),
        Card(
          child: Image.asset('assets/images/p2.gif'),
        ),
        const ListTile(
          title: Text('Image from url'),
        ),
        Card(
          child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://picsum.photos/250?image=9',
            ),
          ),
      ],
    );
  }
}
