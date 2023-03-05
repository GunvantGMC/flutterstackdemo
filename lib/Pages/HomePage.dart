import 'package:flutter/material.dart';
import 'package:stackdemo/Models/CardData.dart';
import 'package:stackdemo/Widgets/CstmCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardData> cardDataList = [
    CardData(
        title: "Fruits",
        img:
            "https://www.freepnglogos.com/uploads/fruits-png/fruits-color-testing-mecomb-hunterlab-malaysia-4.png",
        color: Colors.red),
    CardData(
        title: "Vegetables",
        img:
            "https://freepngimg.com/thumb/vegetable/1-2-vegetable-free-png-image-thumb.png",
        color: Colors.blue),
    CardData(
        title: "Herbs",
        img:
            "https://www.transparentpng.com/download/herbs/IXwR9B-herbs-clipart-photo.png",
        color: Colors.green),
    CardData(
        title: "Nuts",
        img:
            "https://static.vecteezy.com/system/resources/previews/013/526/616/original/nuts-on-a-transparent-background-free-png.png",
        color: Colors.yellow),
    CardData(
        title: "Spices",
        img:
            "https://img.favpng.com/3/14/2/spice-herb-paya-flavor-seasoning-png-favpng-KZzUPwAK6m9r4rwhKiTkHuA1d.jpg",
        color: Colors.cyan),
    CardData(
        title: "Grains",
        img:
            "https://www.pngfind.com/pngs/m/5-55459_wheat-png-transparent-background-grain-png-png-download.png",
        color: Colors.pink),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          // shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) => CstmCard(
            cardData: cardDataList[index],
          ),
          itemCount: cardDataList.length,
        ),
      ),
    );
  }
}
