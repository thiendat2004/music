import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_dev_app/common/helpers/is_light_theme.dart';
import 'package:music_dev_app/common/widgets/button/basic_app_button.dart';
import 'package:music_dev_app/core/configs/assets/app_images.dart';
import 'package:music_dev_app/core/configs/assets/app_vectors.dart';
import 'package:music_dev_app/core/configs/theme/app_colors.dart';

class SignupSigninPage extends StatelessWidget {
  const SignupSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: -80,
            right: 0,
            child: Image.asset(
              AppImages.signIn_signUp_bg,
              height: 700,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern,

            ),
          ),
           Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern,
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppVectors.logo,
                  height: 80,
                ),
                SizedBox(height: 20),
                Text(
                  'Feel It. Crank It. Vibe It.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Be careful what you hear. You never know what might awaken within your soul.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: AppColors.grey
                    ),
                    
                  ),
                ),

                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {
                            
                          },
                          title: 'Register',
                          textColor: Colors.white,
                        )
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {}, 
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: context.isLightMode ? Colors.black : Colors.white,
                            ),
                          ))
                        )
                      
                    ],
                  ),
                )

                // Padding(
                //   padding: EdgeInsetsGeometry.symmetric(horizontal: 50),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text("Sign In",
                //         style: TextStyle(
                //           fontWeight: FontWeight.w500,
                //           fontSize: 17,
                //           color: AppColors.grey
                //         ),
                //       ),
                //       Text("Sign Up",
                //         style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 17,
                //           color: AppColors.grey
                //         ),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),

            
          ),
          

        ],
      ),
    );
  }
}