import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:restaurant_app/models/restaurant_model.dart';

class RestaurantRepository {
  Future<RestaurantModel> getRestaurantDetails(String restaurantKey) async {
    const apiUrl = 'https://kezel.co/api/getAllDigitalMenu.php';

    final requestBody = {'key': restaurantKey};

    try {
      final response = await http.post(Uri.parse(apiUrl), body: requestBody);

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final restaurant = RestaurantModel.fromJson(jsonData);
        return restaurant;
      } else {
        throw Exception('Failed to load restaurant details');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
