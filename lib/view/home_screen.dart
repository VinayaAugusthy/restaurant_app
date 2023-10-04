import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/controller/restaurant_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final controller = Provider.of<RestaurantController>(context);
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Details'),
      ),
      // body: Column(
      //   children: [
      //     Text(
      //       controller.restaurant?.page_title ?? 'Restaurant Name',
      //       style: const TextStyle(fontSize: 24),
      //     ),
      //     Expanded(
      //       child: ListView.builder(
      //         itemCount: controller.restaurant?.menu_items.length ?? 0,
      //         itemBuilder: (context, index) {
      //           final menuItem = controller.restaurant!.menu_items[index];
      //           return ListTile(
      //             title: Text(menuItem.name),
      //             subtitle: Text(menuItem.category),
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     controller.fetchRestaurantDetails("LeisureInnVKL");
      //   },
      //   child: const Icon(Icons.refresh),
      // ),
    );
  }
  }
