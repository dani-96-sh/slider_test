import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:slider_test/Model/SliderModel.dart';

class SliderApi {
  static Future<List<SliderModel>> getList() async {
    String url = "${StaticApi.baseUrl}/slider?token=${StaticApi
        // .Token
        }";
    var response = await StaticApi.client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      try {
        return SliderModel.listModels(
          json.decode(
            utf8.decode(
              response.body.codeUnits,
            ),
          ),
        );
      } catch (e) {
        print(e);
        return SliderModel.Error;
      }
    } else {
      return SliderModel.Error;
    }
  }
}

class StaticApi {
  static const String baseUrl = 'https://shop.chbk.run';
  // static final String Token = getToken();
  static var client = http.Client();
}

// String getToken() {
//   return userBox.get("token") ?? "";
// }
