import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_dev_app/common/widgets/button/basic_app_button.dart';
import 'package:music_dev_app/common/widgets/chooseMode/basic_choose_mode.dart';
import 'package:music_dev_app/core/configs/assets/app_images.dart';
import 'package:music_dev_app/core/configs/assets/app_vectors.dart';
import 'package:music_dev_app/core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Stack(
        children: [
          // 1.  bg
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBg),
              ),
            ),
          ),

          // 2. Lớp hover
          Container(
            color: Colors.black.withValues(alpha: 0.5),
          ),

          // 3.
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.lightLogo, height: 60),
                ),
                const Spacer(),
                const Text(
                  'CHOOSE MODE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 40),
                // chooseMode session
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        BasicCirCleChooseMode(
                          color: AppColors.greyChooseMode.withValues(alpha: 0.5),
                          opacity: 0.5,
                          size: 80,
                          child: SvgPicture.asset(
                            AppVectors.lighMode,
                            fit: BoxFit.none,
                          ),
                        ),
                      const SizedBox(height: 20),
                      Text(
                        'Light Mode',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: AppColors.grey
                        ),
                      )
                      ],
                    ),
                    SizedBox(width: 80),
                  Column(
                    children: [
                      BasicCirCleChooseMode(
                          color: AppColors.greyChooseMode.withValues(alpha: 0.5),
                          opacity: 0.5,
                          size: 80,
                          child: SvgPicture.asset(
                            AppVectors.darkMode,
                            fit: BoxFit.none,
                          ),
                        ),
                        const SizedBox(height: 20),
                      Text(
                        'Dark Mode',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: AppColors.grey
                        ),
                      )
                    ],
                  ),
                  ],
                ),
                const SizedBox(height: 50),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (BuildContext context) => const ChooseModePage()
                      )
                    );
                  }, 
                  title: 'Continue',
                  textColor: Colors.white,
                ),
                const SizedBox(height: 20),

              ],
            ),
          ),
        ],
      ),
    );
  }
}