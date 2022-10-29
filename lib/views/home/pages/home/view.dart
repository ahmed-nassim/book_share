import 'package:book_share/views/home/pages/home/controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/search_bar.dart';
import 'model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/pink_h.jpg"),
                const Padding(
                  padding: EdgeInsets.only(top: 110, left: 22),
                  child: Text(
                    "Our Top Picks",
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 24),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 170),
                    child: CarouselSlider.builder(
                      itemCount: book.length,
                      itemBuilder: (context, index, realIndex) {
                        Book books = book[index];
                        return SizedBox(
                          width: 150,
                          // color: Colors.blue,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 150,
                                  child: Image.asset(
                                    books.imageUrl!,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  books.name!,
                                  style: const TextStyle(
                                      fontSize: 16, color: Color(0xffFFFFFF)),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                          height: 180,
                          autoPlay: true,
                          reverse: true,
                          autoPlayAnimationDuration: const Duration(seconds: 1)),
                    )),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: SearchBar(),
                ),
              ],
            ),
            SizedBox(
              height: 105,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: circle.length,
                itemBuilder: (context, index) {
                  Circle circles = circle[index];
                  return Wrap(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Image.asset(
                            circles.imageUrl!,

                            height: 70,
                            width: 70,
                          ),
                        ),const SizedBox(height: 5,),
                        Text(
                          circles.name!,
                          style: const TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  ]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 48,
            ),
                Row(children: const [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Trending Books",
                    style: TextStyle(
                      color: Color(0xff242126),
                      fontSize: 24,
                    ),
                  ),
                ]),
            GridView.builder(
              padding: const EdgeInsets.all(25),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 160),
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    trendBooks[index].imageUrl!,
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: trendBooks.length,
            ),
            SizedBox(
              height: 10.h,
            ),
                Row(
                  children: const [
                    SizedBox(width: 16),
                    Text("Best Share",
                        style:
                            TextStyle(color: Color(0xff242126), fontSize: 24)),
                  ],
                ),SizedBox(
              height: 10.h,
            ),
            Container(
              child: SizedBox(
                // color: Colors.pink,
                height: 260,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      BeastShare bestShares = bestShare[index];
                      return SizedBox(
                        width: 150,
                        // color: Colors.blue,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 190,
                                width: 170,
                                child: Image.asset(
                                  bestShares.imageUrl!,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                bestShares.title!,
                                style: const TextStyle(
                                    fontSize: 15, color: Color(0xff242126)),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                bestShares.subtitle!,
                                style: const TextStyle(
                                    fontSize: 11, color: Color(0xff212121)),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
                Row(
                  children: const [
                    SizedBox(
                      width: 16,
                    ),
                    Text("Recently Viewed",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontSize: 24, color: Color(0xff242126))),
                  ],
                ),  Container(
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      RecentlyViewed recently = recentlyViewed[index];
                      return SizedBox(
                        width: 150,

                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox( height: 190,
                                width: 170,
                                child: Image.asset(
                                  recently.imageUrl!,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                recently.title!,
                                style: const TextStyle(
                                    fontSize: 15, color: Color(0xff242126)),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                recently.subtitle!,
                                style: const TextStyle(
                                    fontSize: 11, color: Color(0xff212121)),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
       ),
      ),

    );
  }
}
