import 'dart:developer';
import 'package:app_zone/special_offers/models/special_offers_model.dart';

class SpecialOffersRepository{

  static Future<List<SpecialOffersModel>> getSpecialOffersData() async{
    log('SpecialOffersRepository:getSpecialOffersData');
    await Future.delayed(const Duration(seconds: 4));
    List<SpecialOffersModel> specialOffersListModel =  specialOffersData.map((e) => SpecialOffersModel.fromJson(e)).toList();
    log('specialOffersListModel:length:${specialOffersListModel.length}' );
    return specialOffersListModel;
  }
}

List<Map<String,dynamic>> specialOffersData = [
  {
    "id":1,
    "imageURL":"https://www.designi.com.br/images/preview/10000492.jpg",
    "per":5.5,
    "des":"First offer"

  },
  {
    "id":2,
    "imageURL":"https://www.pngplay.com/wp-content/uploads/15/Classic-Chicken-Burger-Transparent-Images.png",
    "per":10.5,
    "des":"Second offer"
  },
  {
    "id":3,
    "imageURL":"https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1a8.png",
    "per":50.5,
    "des":"Third offer"
  },
];