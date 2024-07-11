
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:dio/dio.dart';
import 'package:softbd_task/core/features/home/model/userResponse.dart';
import 'package:softbd_task/core/network/dio_client.dart';
import 'package:softbd_task/core/utils/toast.dart';

class HomeController extends GetxController with StateMixin<List<UserData>> {

  final dioClient = DioClient.instance;

  final  userlist = <UserData>[].obs;

  Future<void> showUserList() async{

    try {

      change(null, status: RxStatus.loading());

      final res = await dioClient.get("bc69ae1f6991da81ab9a");

      final user_response = UserResponse.fromJson(res);

      if(!user_response.toString().isEmpty){

        final list = user_response.data ?? [];

        if(userlist.isEmpty){

          change(null, status: RxStatus.empty());

        }
        userlist.assignAll(list);

        change(userlist, status: RxStatus.success());

      }else {

        Toast.errorToast("Data Not Found");

      }

    } catch(e) {

      Toast.errorToast("${e.toString()}");

      debugPrint(e.toString());

      change(null, status: RxStatus.error(e.toString()));
    }
  }
}