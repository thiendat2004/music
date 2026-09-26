import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_dev_app/common/widgets/button/basic_app_button.dart';
import 'package:music_dev_app/core/configs/assets/app_images.dart';
import 'package:music_dev_app/core/configs/assets/app_vectors.dart';
import 'package:music_dev_app/core/configs/theme/app_colors.dart';
import 'package:music_dev_app/presentation/choose_mode/pages/choose_mode_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                  'NGHIÊM VŨ HOÀNG LONG',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Featuring 30 artworks under the creative direction of Trung Bảo (Fustic.) & Phương Vũ (Antiantiart).',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (BuildContext context) => const ChooseModePage()
                      )
                    );
                  }, 
                  title: 'Get Started',
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
