import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
                child: Column(children: [
              Stack(
                children: [
                  Image.asset("assets/images/pink_s.jpg"),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 22),
                    child: Text(
                      "Ahmed Nassim",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Text("21",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color(0xff212121))),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Books",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff212121))),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: const [
                                  Text("50k",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color(0xff212121))),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Followers",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff212121))),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: const [
                                  Text("30",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color(0xff212121))),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Following",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff212121))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage("assets/images/ahmed_nassim.jpg"),
            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffFF6EA1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Edit Profile",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF), fontSize: 11),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 240),
                child: Text(
                  "Account ",
                  style: TextStyle(color: Color(0xffC1C1C1), fontSize: 14),
                ),

              ),
                  const SizedBox(
                    height:15
                  ),
              Container(
                height: 145.h,
                width: 324.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffFFFFFF)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20,bottom: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Icon(
                            Icons.shopping_cart,
                            color: Color(0xffFF6EA1),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            "My  Cart ",
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: 326.33, color: const Color(0xffD8D8D8), height: 1),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20,bottom: 10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.credit_card,
                            color: Color(0xffFF6EA1),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            "Purchases ",
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: 326.33, color: const Color(0xffD8D8D8), height: 1),
                    Padding(padding: const EdgeInsets.only(top: 12,left: 20,bottom: 20 ),
                    child:Row(
                      children: const [
                        Icon(
                          Icons.person_rounded,
                          color: Color(0xffFF6EA1),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "Account  ",
                          style:
                          TextStyle(color: Color(0xff000000), fontSize: 15),
                        ),
                      ],
                    )
                      ,)
                  ],
                ),
              ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 240),
                    child: Text(
                      "Settings ",
                      style: TextStyle(color: Color(0xffC1C1C1), fontSize: 14),
                    ),

                  ), const SizedBox(height:10 ),
                  Container(
                    height: 275.h,
                    width: 324.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffFFFFFF)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 25,bottom: 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              CircleAvatar(
                                radius: 8,backgroundColor: Color(0xff000000) ,
                              ),

                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                "Night Mode ",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: 326.33, color: const Color(0xffD8D8D8), height: 1),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 20,bottom: 15),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.add_alert_sharp,
                                color: Color(0xffFF6EA1),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                "Notification ",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: 326.33, color: const Color(0xffD8D8D8), height: 1),
                        Padding(padding: const EdgeInsets.only(top: 12,left: 20,bottom: 15 ),
                          child:Row(
                            children: const [
                              Icon(
                                Icons.language,
                                color: Color(0xffFF6EA1),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                "Language ",
                                style:
                                TextStyle(color: Color(0xff000000), fontSize: 15),
                              ),
                            ],
                          )
                          ,),
                        Container(
                            width: 326.33, color: const Color(0xffD8D8D8), height: 1),
                        Padding(padding: const EdgeInsets.only(top: 12,left: 20,bottom: 15 ),
                          child:Row(
                            children: const [
                              Icon(
                                Icons.info_sharp,
                                color: Color(0xffFF6EA1),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                "Help  ",
                                style:
                                TextStyle(color: Color(0xff000000), fontSize: 15),
                              ),
                            ],
                          )
                          ,),
                        Container(
                            width: 326.33, color: const Color(0xffD8D8D8), height: 1),
                        Padding(padding: const EdgeInsets.only(top: 12,left: 20,bottom: 15 ),
                          child:Row(
                            children: const [
                              Icon(
                                Icons.logout_outlined,
                                color: Color(0xffFF6EA1),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                "Sign Out ",
                                style:
                                TextStyle(color: Color(0xff000000), fontSize: 15),
                              ),
                            ],
                          )
                          ,),



                      ],
                    ),
                  ),
            ]))));
  }
}
