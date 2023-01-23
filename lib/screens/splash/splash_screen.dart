// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:clone_fb/routes/routes.dart';
import 'package:clone_fb/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class StaggerAnimation extends StatelessWidget {
  StaggerAnimation({super.key, required this.controller})
      :

        width = Tween<double>(
          begin: 20.0,
          end: 64.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.125,
              0.250,
              curve: Curves.ease,
            ),
          ),
        ),
        height = Tween<double>(
          begin: 20.0,
          end: 64.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              0.375,
              curve: Curves.ease,
            ),
          ),
        ),
        padding = EdgeInsetsTween(
          begin: const EdgeInsets.only(bottom: 16.0),
          end: const EdgeInsets.only(bottom: 550.0),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              0.375,
              curve: Curves.ease,
            ),
          ),
        );

  final Animation<double> controller;
  final Animation<double> width;
  final Animation<double> height;
  final Animation<EdgeInsets> padding;

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Container(
      padding: padding.value,
      alignment: Alignment.center,
      child: Container(
        width: width.value,
        height: height.value,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          'assets/images/facebook_blue.png',
        ))
            // borderRadius: borderRadius.value,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this)
      ..forward();

    Timer(
      const Duration(seconds: 2),
      () => Get.offNamed(Routes.login),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0;
    return Scaffold(
      backgroundColor: AppColors.secondary1,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.secondary1,
          statusBarIconBrightness: Brightness.dark,
        ),
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: StaggerAnimation(controller: _controller.view),
    );
  }
}
