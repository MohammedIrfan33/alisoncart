import 'package:alisoncart/controllers/home_controller.dart';
import 'package:alisoncart/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _homeController = Get.put(HomeController());



  @override
  void initState() {
    
    _homeController.fetchFullhomeData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return  _homeController.isLoading.value  ?  Center(
          child: CircularProgressIndicator(
            color: AppConstants.kPrimaryColor,
          ),
        ) : ListView(

        );
      },),
      
    );
  }
}