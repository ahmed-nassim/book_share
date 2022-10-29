import 'package:book_share/core/helper_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../home/view.dart';
import 'component/controller.dart';
class AfterOnBoardingView extends StatefulWidget {
  const AfterOnBoardingView({Key? key}) : super(key: key);
  @override
  State<AfterOnBoardingView> createState() => _AfterOnBoardingViewState();
}
class _AfterOnBoardingViewState extends State<AfterOnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Image.asset("assets/images/pink_s.jpg"),
                      const Padding(
                        padding: EdgeInsets.only(top: 50, left: 22),
                        child: Text(
                          "Welcome\nChoose the topics",
                          style:
                              TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                GridView.builder(
                    padding: const EdgeInsets.all(25),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 60,
                    ),
                    itemBuilder: (context, index) => Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                elements[index].isSelected =
                                    !elements[index].isSelected;
                              });
                            },
                            child: Wrap(
                              children: [
                                Column(
                                  children: [
                                    Stack(
                                      children: [
                                        SizedBox(
                                          height: 100.h,
                                          width: 100.w,
                                          child: Image.asset(
                                              elements[index].imageUrl!),
                                        ),
                                        elements[index].isSelected
                                            ? SizedBox(
                                                height: 100.h,
                                                width: 100.w,
                                                child: Image.asset(
                                                    "assets/images/selected_item.png"),
                                              )
                                            : SizedBox(
                                                height: 100.h,
                                                width: 100.w,
                                              )
                                      ],
                                    ),
                                    Text(elements[index].name!,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: elements[index].isSelected
                                                ? const Color(0xffFF6EA1)
                                                : const Color(0xff17191D)))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                    itemCount: elements.length),
                const SizedBox(height: 30),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "More Topics",
                      style: TextStyle(
                        color: Color(0xffFF6EA1),
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    )),
                const SizedBox(height: 17),
                ElevatedButton(
                  onPressed: () {
                    navigateTo(page: const HomeView());
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFF6EA1),
                      fixedSize: const Size(327, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    "Apply",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
