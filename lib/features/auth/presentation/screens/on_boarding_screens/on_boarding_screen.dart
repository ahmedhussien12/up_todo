import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:up_todo/core/database/cache/cache_helper.dart';
import 'package:up_todo/core/services/service_locator.dart';
import 'package:up_todo/core/utils/app_colors.dart';
import 'package:up_todo/core/utils/app_texts.dart';
import 'package:up_todo/core/widgets/custom_elevated_button.dart';
import 'package:up_todo/core/widgets/custom_text_button.dart';
import 'package:up_todo/features/auth/data/model/on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: PageView.builder(
            itemCount: OnBoardingModel.onBoardingList.length,
            controller: controller,
            itemBuilder:
                (context, index) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //skip text
                    if (index == 2) const SizedBox(height: 54) else Align(
                          alignment: Alignment.centerLeft,
                          child: CustomTextButton(text: AppTexts.skip,
                          onPressed: () {
                            controller.jumpToPage(2);
                          },),
                        ),

                    const SizedBox(height: 15),
                    //image
                    Image.asset(OnBoardingModel.onBoardingList[index].image),
                    const SizedBox(height: 15),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        activeDotColor: AppColors.primaryColor,
                        dotColor: AppColors.textColor.withAlpha(
                          (0.87 * 255).toInt(),
                        ),

                        dotHeight: 4,
                        dotWidth: 26,
                      ),
                    ),
                    //dots
                    const SizedBox(height: 70),
                    // title
                    Text(
                      OnBoardingModel.onBoardingList[index].title,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: 42),
                    // subtitle
                    Text(
                      OnBoardingModel.onBoardingList[index].subTitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.displayMedium!.copyWith(
                        color: AppColors.textColor.withAlpha(
                          (0.87 * 255).toInt(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // back button
                        if (index == 0) Container() else CustomTextButton(text: AppTexts.back,
                                onPressed: () {
                                  controller.previousPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeIn,);
                            },),
                        // next button
                        if (index != 2) CustomTextButton(text: AppTexts.next,
                                onPressed: () {
                                  controller.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeIn,
                                  );
                            },) else CustomElevatedButton(text: AppTexts.getStarted,
                                onPressed: () async {
                                  await sl<CacheHelper>()
                                      .saveData(key: AppTexts.onBoardingKey, value: true)
                                      .then((value) {
                                        Navigator.pushReplacementNamed(
                                          context,
                                          'Home',
                                        );
                                      });
                            },),

                      ],
                    ),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
