import 'package:clone_fb/routes/routes.dart';
import 'package:clone_fb/utils/app_colors.dart';
import 'package:clone_fb/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class ForgotPassword2 extends StatefulWidget {
  const ForgotPassword2({super.key});

  @override
  State<ForgotPassword2> createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  String? email;

  final _formKey = GlobalKey<FormState>();
  final formValidVN = ValueNotifier<bool>(false);

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
          statusBarIconBrightness: Brightness.dark,
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
            size: 32,
          ),
        ),
        titleSpacing: 0,
        title: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(top: 3),
          child: Text(
            'text10'.tr,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: Dimensions.height30,
                ),
                child: Text(
                  'text13'.tr,
                  style: TextStyle(
                    color: AppColors.fontBlack,
                    fontSize: Dimensions.height17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22,
                  top: 17,
                  right: 15,
                ),
                child: Form(
                  key: _formKey,
                  onChanged: () {
                    formValidVN.value =
                        _formKey.currentState?.validate() ?? false;
                  },
                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: AppColors.primary1,
                    cursorHeight: 22,
                    style: TextStyle(
                      color: AppColors.fontgrey1,
                      fontSize: Dimensions.height16,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: -4, top: 10),
                      hintText: 'text14'.tr,
                      hintStyle: TextStyle(
                        color: AppColors.fontgrey1,
                        fontSize: Dimensions.height16,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.fontgrey2,
                          width: Dimensions.width05,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.primary1,
                          width: Dimensions.width2,
                        ),
                      ),
                    ),
                    onSaved: (value) => email = value,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 25,
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
                        borderRadius: BorderRadius.circular(Dimensions.height6),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      Size(327, 36),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'text10'.tr,
                    style: TextStyle(
                      color: AppColors.secondary1,
                      fontSize: Dimensions.height15,
                      fontWeight: FontWeight.w500,
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
                Get.toNamed(Routes.getForgotPassword1());
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(bottom: 7)),
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
                    borderRadius: BorderRadius.circular(Dimensions.height6),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(
                  Size(Dimensions.width150, Dimensions.height20),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                'button4'.tr,
                style: TextStyle(
                  color: AppColors.primary1,
                  fontSize: Dimensions.height15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
