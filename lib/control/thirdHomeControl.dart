import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/control/thirdHomeModel.dart';
import 'package:second_app/model/thirdHomeDataModell.dart';

class thirdHomeControl extends GetxController {
  final thirdHomeModel thirdModel;
  thirdHomeControl({required this.thirdModel});

  @override
  void onInit() {
    super.onInit();
    getListData();
    loadController.addListener(() async {
      if(loadController.position.pixels <= loadController.position.maxScrollExtent){
        loadingMore(true);
        await getMore(++page.value);
        loadingMore(false);
      }
    });
  }

  @override
  void dispose() {
    loadController.dispose();
    super.dispose();
  }

  var loading = false.obs;
  var loadingMore = false.obs;
  var allLoaded = false.obs;
  ScrollController loadController = ScrollController();
  RxList<thirdWelcome> allData = <thirdWelcome>[].obs;
  RxList<thirdWelcome> loadMoreData = <thirdWelcome>[].obs;
  var page = 1.obs;
  var pageTotal = 0.obs;

  getListData() async {
    try {
      loading(true);
      var r = await thirdModel.thirdHomeMapper(page: page.toInt());
      if (r != null) {
        List<dynamic> listDetail = r["data"];
        allData(RxList<thirdWelcome>.from(
            listDetail.map((e) => thirdWelcome.fromJson(e))));
      }
    } catch (_) {}
  }

  getMore(int page)async{
    try{
      var r = await thirdModel.thirdHomeMapper(page: page.toInt());
      if (r != null) {
        List<dynamic> listDetail = r["data"];
        loadMoreData.clear();
        loadMoreData(RxList<thirdWelcome>.from(
            listDetail.map((e) => thirdWelcome.fromJson(e))));
        allData.addAll(loadMoreData);
      }
    }catch(_){}
  }

  Future<void> onRefresh()async{
    await Future.delayed(Duration(milliseconds: 1000));
    getListData();
  }
}
