import 'package:book_share/views/after_on_boarding/view.dart';
import 'package:flutter/material.dart';

import '../../core/helper_method.dart';
import 'controller.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          controller.currentPage = value;
          setState(() {});
        },
        children: List.generate(
            controller.models.length,
            (index) => SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 45, right: 16),
                          child: TextButton(
                              onPressed: () {
                                navigateTo(
                                    page: const AfterOnBoardingView(),
                                    withHistory: false);
                                setState(() {});
                              },
                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff969696),
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 77,
                        ),
                        Image.asset(
                          controller.models[controller.currentPage].imageUrl!,
                          height: 199,
                          width: 250.31,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Text(
                          controller.models[controller.currentPage].title!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color(0xff17191D),
                          ),
                        ),
                        const SizedBox(
                          height: 34,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                              controller.models.length,
                              (index) => Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        end: 9),
                                    child:Container(decoration: BoxDecoration(border:Border.all(color:const Color(0xffFF6EA1)),shape: BoxShape.circle),child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Color(
                                          index == controller.currentPage
                                              ? 0xffFF6EA1
                                              : 0xffffffff),
                                    ) ,)

                                  )),
                        ),
                        const SizedBox(
                          height: 40,
                        ),



                        controller.currentPage == controller.models.length - 1
                            ? ElevatedButton(
                                onPressed: () {
                                  navigateTo(
                                      page: const AfterOnBoardingView(),
                                      withHistory: false);
                                },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xffFF6EA1),
                              fixedSize: const Size(184, 45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                                child: const Text("Get Started"))
                            : const SizedBox(),

























                        // ElevatedButton(
                        //   onPressed: () {
                        // navigateto(page: DessertsView());

                        // if (controller.currentPage <
                        //     (controller.models.length - 1)) {
                        //   print(controller.currentPage < 2);
                        //   print("current" +
                        //       controller.currentPage.toString());
                        //   print("Length" +
                        //       controller.models.length.toString());
                        //   controller.currentPage++;
                        //   setState(() {});
                        // }
                        // if (controller.currentPage ==
                        //     controller.models.length - 1) {
                        //   CacheHelper.saveIfNotFirstTime();
                        //       navigateTo(
                        //           page: AfterOnBoardingView(), withHistory: false);
                        //     }
                        //
                        //
                        //
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //       primary: Color(0xffFF6EA1),
                        //       fixedSize: Size(184, 45),
                        //       shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(5))),
                        //   child: Text(
                        //     controller.currentPage ==
                        //         controller.models.length - 1
                        //         ? "Get Started"
                        //         : "next",
                        //     style: TextStyle(
                        //         fontSize: 20,
                        //         color: Color(0xffFFFFFF)),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 94,
                        // ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
