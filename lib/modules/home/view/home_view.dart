import 'package:dynamic_tabbar/dynamic_tabbar.dart';
import 'package:ecart/modules/home/controller/home_controller.dart';
import 'package:ecart/theme/app_theme.dart';
import 'package:ecart/utilities/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return  Obx( () {
        return Scaffold(
          backgroundColor: AppTheme.whiteBackground,
          appBar: PreferredSize(preferredSize: const Size.fromHeight(150.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35, top: 30),
                    child: Row(
                      children: [
                        SvgPicture.asset(Images.icHomeTab,
                          color: AppTheme.blackColor, height: 33, width: 43,),
                        const SizedBox(width: 16,),
                        const Text('E-Shop',style: TextStyle(fontSize: 17, color: AppTheme.blackColor),),

                        const Spacer(),
                        InkWell(
                          child: Row(
                            children: [
                              SvgPicture.asset(Images.icCart,
                                color: AppTheme.blackColor, height: 33, width: 43,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppTheme.meetingRed,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: const Text('10', style: TextStyle(fontSize: 12, color: AppTheme.whiteBackground ),),
                                ),
                              )
                            ],
                          ),
                        )



                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: AppTheme.dividerColor, thickness: 1,),
                  const SizedBox(height: 10,),
                  DefaultTabController(length: controller.categoryTabs.length, child:
                  TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      isScrollable: true,
                      indicatorColor: Colors.black,
                      labelPadding:
                      const EdgeInsets.symmetric(horizontal: 20),
                      labelStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                      tabs: controller.categoryTabs,
                    onTap : (index) {

                        controller.getProducts(controller.categoryList[index]);
                    },
                  )
                  )

                ],
              )),
          body:  GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              mainAxisSpacing: 5.0, // spacing between rows
              crossAxisSpacing: 10.0, // spacing between columns
            ),
            padding: const EdgeInsets.all(8.0), // padding around the grid
            itemCount: controller.productList.length, // total number of items
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.network(
                    controller.productList[index].image ?? "",
                    fit: BoxFit.fill,
                    width: 145,
                    height: 180,
                  ),
                  const SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(controller.productList[index].title,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                      fontSize: 12,
                      color: AppTheme.blackColor
                    ),),
                  ),
                  const SizedBox(height: 10,),
                  Align(
                     alignment: Alignment.centerLeft,
                     child: Text( '\$${controller.productList[index].price}', style: const TextStyle(
                        fontSize: 12,
                        color: AppTheme.blackColor
                                         ),),
                   )
                ],
              );
            },
          )
        );
      }
    );
  }
}