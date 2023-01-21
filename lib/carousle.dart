import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousle extends StatelessWidget {
  Carousle({super.key});
  final urlImages = [
    'https://www.himalpost.com/wp-content/uploads/2020/07/karnali-pradesh-sabha-scaled.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Scaffold(
        body: CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return buildImag(urlImage, index);
          },
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            aspectRatio: 16 / 10,
            enlargeCenterPage: true,
            viewportFraction: 1,
          ),
        ),
      ),
    );
  }

  Widget buildImag(String urlImage, int index) {
    return SizedBox(
        child: Image.network(
      urlImage,
      fit: BoxFit.cover,
    ));
  }
}
