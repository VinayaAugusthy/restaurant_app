import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:restaurant_app/models/restaurant_model.dart';

// class RestaurantRepository {
//   Future<RestaurantModel> getRestaurantDetails(String restaurantKey) async {
//     const apiUrl = 'https://kezel.co/api/getAllDigitalMenu.php';

//     final requestBody = {'key': restaurantKey};

//     try {
//       final response = await http.post(Uri.parse(apiUrl), body: requestBody);

//       if (response.statusCode == 200) {
//         final jsonData = json.encode(response.body);
//         final restaurant = RestaurantModel.fromJson(jsonData as   Map<String, dynamic>);
//         return restaurant;
//       } else {
//         throw Exception('Failed to load restaurant details');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
// }
class RestaurantRepository {
  Future<void> postRestaurantDetails(Map<String, dynamic> details) async {
    const apiUrl = 'https://kezel.co/api/postRestaurantDetails.php'; // Replace with the actual API endpoint URL

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: json.encode(details), // Convert the details to a JSON string
        headers: {'Content-Type': 'application/json'}, // Set the content type
      );

      if (response.statusCode == 200) {
        // Request was successful, you can handle the response if needed
      } else {
        // Handle error responses here
        throw Exception('Failed to post restaurant details');
      }
    } catch (e) {
      // Handle network errors here
      print('Error: $e');
      throw e; // Rethrow the exception to propagate the error
    }
  }
}
