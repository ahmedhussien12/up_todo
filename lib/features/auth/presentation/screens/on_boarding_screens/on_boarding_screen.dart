import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:up_todo/core/utils/app_colors.dart';
import 'package:up_todo/core/utils/app_texts.dart';

import '../../../data/model/on_boarding_model.dart';

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
                    index == 2
                        ? SizedBox(height: 54)
                        : Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: () {
                              controller.jumpToPage(2);
                            },
                            child: Text(
                              AppTexts.skip,
                              style: Theme.of(
                                context,
                              ).textTheme.displaySmall!.copyWith(
                                color: AppColors.textColor.withAlpha(
                                  (0.44 * 255).toInt(),
                                ),
                              ),
                            ),
                          ),
                        ),

                    SizedBox(height: 15),
                    //image
                    Image.asset(OnBoardingModel.onBoardingList[index].image),
                    SizedBox(height: 15),
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
                        spacing: 8,
                      ),
                    ),
                    //dots
                    SizedBox(height: 70),
                    // title
                    Text(
                      OnBoardingModel.onBoardingList[index].title,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(height: 42),
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
                    SizedBox(height: 100),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // back button
                        index == 0
                            ? Container()
                            : TextButton(
                              onPressed: () {
                                controller.previousPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                );
                              },
                              child: Text(
                                AppTexts.back,
                                style: Theme.of(
                                  context,
                                ).textTheme.displaySmall!.copyWith(
                                  color: AppColors.textColor.withAlpha(
                                    (0.44 * 255).toInt(),
                                  ),
                                ),
                              ),
                            ),
                        // next button
                        index != 2
                            ? ElevatedButton(
                              onPressed: () {
                                controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                );
                              },
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              child: Text(AppTexts.next),
                            )
                            : ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, 'home');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: Text(AppTexts.getStarted),
                            ),
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
