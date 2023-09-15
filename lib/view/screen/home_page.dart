import 'package:carousel_slider/carousel_slider.dart';
import 'package:db_miner/Provider/quotesProvider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetxController controller = Get.put(QuotesProvider());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quotes",
          style: GoogleFonts.sofia(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (val) {},
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.green, width: 2, style: BorderStyle.solid),
              ),
              hintText: "Search Quotes",
            ),
          ),
          Column(
            children: [
              CarouselSlider(
                items: [],
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
