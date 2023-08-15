import 'package:app_zone/special_offers/models/special_offers_model.dart';
import 'package:app_zone/special_offers/repository/special_offers_repository.dart';
import 'package:flutter/material.dart';

class SpecialOffersController extends ChangeNotifier{
  List<SpecialOffersModel>? specialOffersDataList;
  bool isLoading = true;

  getData() async{
    isLoading = true;
    specialOffersDataList = await SpecialOffersRepository.getSpecialOffersData();
    isLoading = false;
    notifyListeners();
  }

}