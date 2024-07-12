import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ImageProvider> imageList = [];

  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= 36; i++) {
      imageList.add(AssetImage('assets/$i.png'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('360 Image View'),
      ),
      body: Center(
        child: ImageView360(
          key: UniqueKey(),
          imageList: imageList,
          autoRotate: false, // Otomatik döndürmeyi kapatıyoruz
          rotationCount: 0, // Döndürme sayısı gereksiz hale geliyor
          rotationDirection: RotationDirection.clockwise, // Yönü belirtebilirsiniz
          frameChangeDuration: const Duration(milliseconds: 30),
          swipeSensitivity: 2, // Kaydırma hassasiyeti
          allowSwipeToRotate: true, // Kaydırarak döndürmeyi etkinleştiriyoruz
        ),
      ),
    );
  }
}
