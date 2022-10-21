import 'package:flutter/material.dart';

class MarvelLogoWidget extends StatelessWidget {
  const MarvelLogoWidget({super.key});

  Widget _title() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: const Text(
        'Choose your hero',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 25,
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Image.network(
        'https://raw.githubusercontent.com/effectiveband/fkn_labs_2022/main/Images/marvel.png',
        height: 40,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2A2629),
      body: SafeArea(
        child: Column(
          children: [
            _logo(),
            _title(),
          ],
        ),
      ),
    );
  }
}