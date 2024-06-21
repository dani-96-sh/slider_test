import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slider_test/Controllers/SliderController.dart';
import 'package:slider_test/Model/SliderModel.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final SliderGETX Slider = Get.put(SliderGETX());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: List.generate(Slider.SliderList.length, (index) {
            SliderModel data = Slider.SliderList[index];
            return Column(
              children: [
                Text(data.id),
                Text(data.categoryID),
                Text(data.linkPhoto),
                Text(data.nameManufacturer)
              ],
            );
          }),
        ),
      ),
    );
  }
}
