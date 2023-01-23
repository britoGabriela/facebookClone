// ignore_for_file: prefer_const_constructors

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:clone_fb/routes/routes.dart';
import 'package:clone_fb/utils/app_colors.dart';
import 'package:clone_fb/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class Language {
  String title;

  Language({
    required this.title,
  });
}

class _LoginState extends State<Login> {
  late String email;
  late String password;

  bool passwordVisible = false;

  final _formKey = GlobalKey<FormState>();
  final formValidVN = ValueNotifier<bool>(false);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();

    super.dispose();
  }

   @override
  void initState() {
    focusNode2.addListener(() {});
    super.initState();
  }

  int selected = -1;

  List<Language> languages = [
    Language(
      title: 'English',
    ),
    Language(
      title: 'Español',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Checks if keyboard is visible or not
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      // !isKeyboard is added to check the keyboard visibility and change widgets accordingly
      backgroundColor: AppColors.secondary1,
      appBar: AppBar(
        backgroundColor:
            !isKeyboard ? AppColors.fontBlue : AppColors.secondary1,
        toolbarHeight: !isKeyboard ? Dimensions.height175 : 98,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor:
              !isKeyboard ? AppColors.fontBlue : AppColors.secondary1,
          statusBarIconBrightness: Brightness.light,
        ),
        leading: BackButton(
          color: Colors.transparent,
        ),
        flexibleSpace: !isKeyboard
            ? Image(
                image: AssetImage(
                  'assets/images/facebook_header.png',
                ),
                fit: BoxFit.cover,
              )
            : Container(
                padding: EdgeInsets.only(top: 47),
                child: Image(
                  height: 64,
                  image: AssetImage(
                    'assets/images/facebook_blue.png',
                  ),
                ),
              ),
      ),
      body: Column(
        children: [
          if (!isKeyboard)
            Padding(
              padding: EdgeInsets.only(
                top: Dimensions.height9,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    // Creates a list with length positions and fills it with values - based on class Language at the beginning of this screen
                    children: List.generate(
                      languages.length,
                      (index) {
                        return InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      selected = index;

                                      // Here we'll create the condition for textbutton to change it's values on tap
                                      if (index == 0) {
                                        if (languages[0].title == 'English') {
                                          languages[0].title = 'Português';
                                          languages[1].title = 'Españhol';
                                          var locale = Locale('en', 'US');
                                          Get.updateLocale(locale);
                                        } else {
                                          languages[0].title = 'English';
                                          languages[1].title = 'Españhol';
                                          var locale = Locale('pt', 'BR');
                                          Get.updateLocale(locale);
                                        }
                                      }
                                      if (index == 1) {
                                        if (languages[1].title == 'Españhol') {
                                          languages[1].title = 'English';
                                          languages[0].title = 'Portugûes';
                                          var locale = Locale('es', 'ES');
                                          Get.updateLocale(locale);
                                        } else {
                                          languages[1].title = 'Españhol';
                                          var locale = Locale('en', 'US');
                                          Get.updateLocale(locale);
                                        }
                                      }

                                      print(languages[index].title);
                                    },
                                  );
                                },
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.zero),
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
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.height6),
                                    ),
                                  ),
                                  minimumSize: MaterialStateProperty.all(
                                    Size(50, Dimensions.height20),
                                  ),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Text(
                                  languages[index].title,
                                  style: TextStyle(
                                    color: AppColors.fontgrey1,
                                    fontSize: Dimensions.height14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.width5,
                              ),
                              Text(
                                '•',
                                style: TextStyle(
                                  color: AppColors.fontgrey1,
                                  fontSize: Dimensions.height14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.width5,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
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
                          borderRadius:
                              BorderRadius.circular(Dimensions.height6),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all(
                        Size(50, Dimensions.height20),
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'text4'.tr,
                      style: TextStyle(
                        color: AppColors.primary1,
                        fontSize: Dimensions.height14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          Padding(
            padding: EdgeInsets.only(
              left: Dimensions.width36,
              top: !isKeyboard ? Dimensions.height33 : Dimensions.height5,
              right: Dimensions.width36,
            ),
            child: Form(
              key: _formKey,
              onChanged: () {
                formValidVN.value = _formKey.currentState?.validate() ?? false;
              },
              child: Column(
                children: [
                  TextFormField(
                    onTap: () => setState(() {
                      // Calls the keyboard when each texformfield is clicked
                      focusNode1.requestFocus();
                    }),
                    focusNode: focusNode1,
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    cursorColor: AppColors.darkGreen,
                    cursorHeight: 25,
                    style: TextStyle(
                      color: AppColors.fontBlack,
                      fontSize: Dimensions.height18,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                        Dimensions.width5,
                        0,
                        Dimensions.width5,
                        0,
                      ),
                      hintText: 'text5'.tr,
                      hintStyle: TextStyle(
                        color: AppColors.fontgrey1,
                        fontSize: Dimensions.height18,
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
                    onSaved: (value) => email = value!,
                  ),
                  SizedBox(
                    height: Dimensions.height11,
                  ),
                  TextFormField(
                    onTap: () => setState(() {
                      focusNode2.requestFocus();
                    }),
                    focusNode: focusNode2,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !passwordVisible,
                    controller: passwordController,
                    cursorColor: AppColors.fontgrey1,
                    cursorHeight: 24,
                    cursorWidth: .5,
                    style: TextStyle(
                      color: AppColors.fontBlack,
                      fontSize: Dimensions.height18,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                        Dimensions.width5,
                        17,
                        Dimensions.width5,
                        0,
                      ),
                      hintText: 'text6'.tr,
                      hintStyle: TextStyle(
                        color: AppColors.fontgrey1,
                        fontSize: Dimensions.height18,
                        fontWeight: FontWeight.w400,
                      ),
                      suffixIcon: focusNode2.hasFocus
                          ? IconButton(
                              padding: EdgeInsets.only(left: 20, top: 12),
                              icon: Icon(
                                passwordVisible
                                    ? BootstrapIcons.eye
                                    : BootstrapIcons.eye_slash,
                                color: AppColors.fontBlack,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            )
                          : Icon(
                              BootstrapIcons.eye_slash,
                              color: Colors.transparent,
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
                    onSaved: (value) => password = value!,
                  ),
                ],
              ),
            ),
          ),
          // Log In button
          Padding(
            padding: EdgeInsets.only(
              left: Dimensions.width32,
              top: Dimensions.height19,
              right: Dimensions.width32,
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
                    borderRadius: BorderRadius.circular(Dimensions.height4),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(
                  Size(Dimensions.width312, Dimensions.height40),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                'button1'.tr,
                style: TextStyle(
                  color: !isKeyboard
                      ? AppColors.secondary1
                      : AppColors.secondary1.withOpacity(.5),
                  fontSize: Dimensions.height16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          // Forgot Password button
          Padding(
            padding: EdgeInsets.only(
              left: Dimensions.width35,
              top: Dimensions.height15,
              right: Dimensions.width35,
            ),
            child: TextButton(
              onPressed: () {
                Get.toNamed(Routes.getForgotPassword1());
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
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
              child: Column(
                children: [
                  Text(
                    'text7'.tr,
                    style: TextStyle(
                      color: AppColors.primary1,
                      fontSize: Dimensions.height16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'text8'.tr,
                    style: TextStyle(
                      color: AppColors.primary1,
                      fontSize: Dimensions.height16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!isKeyboard)
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width27,
                top: Dimensions.height36,
                right: Dimensions.width27,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Divider(
                        color: AppColors.fontgrey3,
                        thickness: 1,
                      ),
                    ),
                  ),
                  Text(
                    'text9'.tr,
                    style: TextStyle(
                      color: AppColors.fontgrey1,
                      fontSize: Dimensions.height12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Divider(
                        color: AppColors.fontgrey3,
                        thickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          // Register button
          if (!isKeyboard)
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width57,
                top: Dimensions.height36,
                right: Dimensions.width57,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.getRegister());
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  elevation: MaterialStateProperty.all(1),
                  backgroundColor: MaterialStateProperty.all(
                    AppColors.fontGreen,
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
                    Size(Dimensions.width312, Dimensions.height36),
                  ),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  'button2'.tr,
                  style: TextStyle(
                    color: AppColors.secondary1,
                    fontSize: Dimensions.height16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
