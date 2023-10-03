
import 'package:flutter/material.dart';
import 'package:restaurant_app/models/restaurant_model.dart';
import 'package:restaurant_app/provider/restaurant_repository.dart';

class RestaurantController extends ChangeNotifier {
  final RestaurantRepository repository = RestaurantRepository();
  RestaurantModel? _restaurant;

  RestaurantModel? get restaurant => _restaurant;

  Future<void> fetchRestaurantDetails(String restaurantKey) async {
    _restaurant = await repository.getRestaurantDetails(restaurantKey);
    notifyListeners();
  }
}
