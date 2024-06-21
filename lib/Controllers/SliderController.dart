import 'package:get/get.dart';
import 'package:slider_test/Model/SliderModel.dart';
import 'package:slider_test/service/sliderapi.dart';

class SliderGETX extends GetxController {
  RxList SliderList = <SliderModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    fetchslider();
  }

  Future<void> fetchslider() async {
    SliderList.value = await SliderApi.getList();
  }
}
