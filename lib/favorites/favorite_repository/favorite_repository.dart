import 'dart:developer';

import 'package:app_zone/favorites/favorite_model/favorite_model.dart';

class MyFavRepository{
  static Future<List<FavoriteDataModel>> getFavData() async{
    log('MyFavRepository:getFavData');
    await Future.delayed(const Duration(seconds: 3));
    List<FavoriteDataModel> myFavoriteDataModels =  myFavoriteData.map((e) => FavoriteDataModel.fromJson(e)).toList();
    log('MyFavRepository:length:${myFavoriteDataModels.length}');
    return myFavoriteDataModels;
  }
}


List<Map<String, dynamic>> myFavoriteData = [
  {
    "id":1,
    "imageURL":"https://p1.hiclipart.com/preview/249/784/968/burger-cheese-burger-png-clipart.jpg",
    "itemName":"Cheese burger",
    "itemStoreName":"Burger King",
    "price":10.00
  },
  {
    "id":2,
    "imageURL":"https://www.pngplay.com/wp-content/uploads/15/Classic-Chicken-Burger-Transparent-Images.png",
    "itemName":"Classic Chicken Burgerr",
    "itemStoreName":"Burger King",
    "price":10.00
  },
  {
    "id":3,
    "imageURL":"https://w1.pngwing.com/pngs/249/88/png-transparent-pizza-slice-pizza-italian-cuisine-sicilian-pizza-pizza-margherita-garlic-bread-takeout-pizza-by-the-slice-thumbnail.png",
    "itemName":"Pizza Hut",
    "itemStoreName":"Burger King",
    "price":13.00
  },
  // {
  //   "id":4,
  //   "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
  //   "itemName":"Beef Kreep",
  //   "itemStoreName":"Burger King",
  //   "price":5.00
  // },
  // {
  //   "id":5,
  //   "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
  //   "itemName":"Chicken Burger 2",
  //   "itemStoreName":"Burger King",
  //   "price":200.00
  // },
];