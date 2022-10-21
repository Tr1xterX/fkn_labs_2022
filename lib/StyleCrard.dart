import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'hero_inf.dart';

class HeroScrollPanel extends StatelessWidget {
  const HeroScrollPanel({super.key});

  Widget buildCard(String urlImage, int index) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(urlImage),
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey,
        ),
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            alignment: Alignment.bottomCenter,
            child: FittedBox(child: nameHero(index)),
          ),
        ]),
      );

  Widget nameHero(int index) {
    var name = name_list[index];
    return Text(
      name,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
  @override
  Widget build(BuildContext context) => Container(
    alignment: Alignment.center,
    child: CarouselSlider.builder(
      options: CarouselOptions(
        height: 900,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
      ),
      itemCount: img_list.length,
      itemBuilder: (context, index, realIndex) {
        final urlImage = img_list[index];
        return buildCard(urlImage, index);
      },
    ),
  );
}
