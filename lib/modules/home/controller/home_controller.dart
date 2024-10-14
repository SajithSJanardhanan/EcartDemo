import 'package:dynamic_tabbar/dynamic_tabbar.dart';
import 'package:ecart/base_classes/base_controller.dart';
import 'package:ecart/modules/home/model/category_res_model.dart';
import 'package:ecart/modules/home/model/product_res_model.dart';
import 'package:ecart/modules/home/repo/home_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../api_service/model/network_error.dart';
import '../../../utilities/constants.dart';

class HomeController extends BaseController {


  var productResponse = ResponseInfo(responseStatus: Constants.loading).obs;
  RxList<ProductResModel> productList = List<ProductResModel>.empty(growable: true).obs;
  RxList<String> categoryList = List<String>.empty(growable: true).obs;
  RxList<Tab> categoryTabs = List<Tab>.empty(growable: true).obs;



  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
     getCategory();
    });

    super.onInit();
  }



  ///function for get category

 getCategory() async {
   categoryList.clear();
   categoryTabs.clear();
   try {
     var result = await Get.find<HomeRepo>().getCategory();
     if(result.error == null) {
       List<String> categoriesList = List<String>.from(result.response as List);
       categoryList.addAll(categoriesList);
       setTabBarData();
       getProducts(categoriesList.first);
     }
   }catch(e){
     print(e);
   }
 }


  getProducts(String category) async {
   productList.clear();
    try {
      var result = await Get.find<HomeRepo>().getProduct(category);
      if(result.error == null) {
           List<ProductResModel>  resModel = List<ProductResModel>.from(result.response.map((x) => ProductResModel.fromJson(x)));
        productList.addAll(resModel);
      }
    }catch(e){
      print(e);
    }
  }
 
 setTabBarData() {
    
    for(var data in categoryList) {
      
      categoryTabs.add(Tab(text: data));
    }
 }




}