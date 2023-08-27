import 'dart:developer';
import 'package:app_zone/favorites/favorite_model/favorite_model.dart';
import 'package:app_zone/favorites/favorite_repository/favorite_repository.dart';
import 'package:flutter/material.dart';

class MyFavoriteController extends ChangeNotifier{

  List<FavoriteDataModel>? favListData;

  bool isLoading = true;

  void getFavData() async{
    isLoading = true;
    favListData = await MyFavRepository.getFavData();
    isLoading = false;
    log('${favListData?.length}');
    notifyListeners();
  }

}