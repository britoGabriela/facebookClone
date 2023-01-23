// ignore_for_file: prefer_const_constructors

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:clone_fb/routes/routes.dart';
import 'package:clone_fb/utils/app_colors.dart';
import 'package:clone_fb/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary1,
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: AppColors.secondary1,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.secondary1,
          statusBarIconBrightness: Brightness.light,
        ),
        leading: IconButton(
          onPressed: () {
            Get.toNamed(Routes.getLogin());
          },
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(maxHeight: 0, maxWidth: 0),
          splashRadius: 1,
          icon: Icon(
            Typicons.arrow_left,
            color: AppColors.fontBlack,
            size: Dimensions.height32,
          ),
        ),
        titleSpacing: 0,
        title: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(top: 3),
          child: Text(
            'text15'.tr,
            style: TextStyle(
              color: AppColors.fontBlack,
              fontSize: Dimensions.height18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            height: .5,
            color: AppColors.fontgrey2,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width40,
                  top: 39,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30,
                ),
                child: Container(
                  height: 183,
                  child: Image(
                    image: AssetImage(
                      'assets/images/register_original.png',
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                  left: Dimensions.width30,
                  top: 21,
                  right: Dimensions.width30,
                ),
                child: Text(
                  'text16'.tr,
                  style: TextStyle(
                    color: AppColors.fontBlack,
                    fontSize: Dimensions.height18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  top: Dimensions.height15,
                  right: Dimensions.width20,
                ),
                child: Column(
                  children: [
                    Text(
                      'text17'.tr,
                      style: TextStyle(
                        color: AppColors.fontgrey1,
                        fontSize: Dimensions.height14,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: Dimensions.height4,
                    ),
                    Text(
                      'text18'.tr,
                      style: TextStyle(
                        color: AppColors.fontgrey1,
                        fontSize: Dimensions.height14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width10,
                  top: 49,
                  right: Dimensions.width10,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    elevation: MaterialStateProperty.all(1),
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.primary1,
                    ),
                    overlayColor: MaterialStateProperty.all(
                      AppColors.fontgrey3.withOpacity(.4),
                    ),
                    animationDuration: Duration.zero,
                    shadowColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    surfaceTintColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    splashFactory: NoSplash.splashFactory,
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimensions.height5),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      Size(320, 43),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'button5'.tr,
                    style: TextStyle(
                      color: AppColors.secondary1,
                      fontSize: Dimensions.height14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.height4),
            child: TextButton(
              onPressed: () {
                showAlertDialog(context);
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(bottom: 9)),
                elevation: MaterialStateProperty.all(1),
                backgroundColor: MaterialStateProperty.all(
                  Colors.transparent,
                ),
                overlayColor: MaterialStateProperty.all(
                  Colors.transparent,
                ),
                animationDuration: Duration.zero,
                shadowColor: MaterialStateProperty.all(
                  Colors.transparent,
                ),
                surfaceTintColor: MaterialStateProperty.all(
                  Colors.transparent,
                ),
                splashFactory: NoSplash.splashFactory,
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.height6),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(
                  Size(Dimensions.width150, Dimensions.height20),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                'button6'.tr,
                style: TextStyle(
                  color: AppColors.primary1,
                  fontSize: Dimensions.height14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showAlertDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: AppColors.secondary1,
          alignment: Alignment.center,
          insetPadding: EdgeInsets.only(
            left: 29,
            top: 3,
            right: 29,
            bottom: Dimensions.height10,
          ),
          titlePadding: EdgeInsets.only(
            left: 24,
            top: 26,
            right: 23,
          ),
          contentPadding: EdgeInsets.only(
            left: 24,
            top: 24,
            right: Dimensions.width10,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          title: Text(
            'text19'.tr,
            style: TextStyle(
              color: AppColors.fontBlack,
              fontSize: Dimensions.height18,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
          content: Text(
            'text20'.tr,
            style: TextStyle(
              color: AppColors.fontgrey1,
              fontSize: Dimensions.height16,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.only(
                        left: 15,
                        top: Dimensions.height13,
                        right: 15,
                        bottom: Dimensions.height18,
                      ),
                    ),
                    elevation: MaterialStateProperty.all(1),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    overlayColor: MaterialStateProperty.all(
                      AppColors.fontgrey3.withOpacity(.4),
                    ),
                    animationDuration: Duration.zero,
                    shadowColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    surfaceTintColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    splashFactory: NoSplash.splashFactory,
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimensions.height4),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      Size(Dimensions.width150, Dimensions.height20),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'button7'.tr,
                    style: TextStyle(
                      color: AppColors.fontBlack,
                      fontSize: Dimensions.height14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.getLogin());
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.only(
                        left: 15,
                        top: 11,
                        right: 15,
                        bottom: Dimensions.height18,
                      ),
                    ),
                    elevation: MaterialStateProperty.all(1),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    overlayColor: MaterialStateProperty.all(
                      AppColors.fontgrey3.withOpacity(.4),
                    ),
                    animationDuration: Duration.zero,
                    shadowColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    surfaceTintColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    splashFactory: NoSplash.splashFactory,
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimensions.height4),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      Size(Dimensions.width150, Dimensions.height20),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'button8'.tr,
                    style: TextStyle(
                      color: AppColors.primary1,
                      fontSize: Dimensions.height14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
