// restaurant_model.dart

// ignore_for_file: non_constant_identifier_names

class RestaurantModel {
  final String page_title;
  final List<MenuItemModel> menu_items;

  RestaurantModel(this.page_title, this.menu_items);

  // factory RestaurantModel.fromJson(Map<String, dynamic> json) {
  //   final pageTitle = json['page_title'];
  //   final menuItemsJson = json['menu_items'] as List;
  //   final menuItems = menuItemsJson
  //       .map((itemJson) => MenuItemModel.fromJson(itemJson))
  //       .toList();

  //   return RestaurantModel(pageTitle, menuItems);
  // }
    Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data["page_title"] = page_title;
    data["menu_items"] = menu_items;
    return data;
  }
}

class MenuItemModel {
  final String category;
  final String name;
  final double price;
  final String imageUrl;

  MenuItemModel(this.category, this.name, this.price, this.imageUrl);

  // factory MenuItemModel.fromJson(Map<String, dynamic> json) {
  //   final category = json['category'];
  //   final name = json['name'];
  //   final price = json['price'].toDouble();
  //   final imageUrl = json['imageUrl'];

  //   return MenuItemModel(category, name, price, imageUrl);
  // }

   Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data["category"] = category;
    data["name"] = name;
    data["price"] = price;
    data["imageUrl"] = imageUrl;
    return data;
  }
}
