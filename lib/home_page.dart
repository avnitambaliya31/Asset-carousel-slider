import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageList = [
    "images/1.webp",
    "images/2.webp",
    "images/3.webp",
    "images/4.webp",
    "images/5.jpeg",
    "images/splash3.webp",
    "images/splash3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Carousel Slider",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Container(
          height: size.height,
          width: size.width,
          // color: Colors.red,
          child: CarouselSlider(
            items: imageList
                .map((e) => Container(
                      height: size.height,
                      width: size.width,
                      child: Image.asset(
                        e,
                        fit: BoxFit.cover,
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(microseconds: 100),
                height: size.height,
                autoPlayCurve: Curves.bounceInOut,
                scrollDirection: Axis.horizontal),
          )),
    );
  }
}
