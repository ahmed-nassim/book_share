import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model.dart';

class ItemBook extends StatelessWidget {
  final Product model;

  const ItemBook({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h),
      child: SizedBox(
        height: 200.h,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(padding:EdgeInsets.only(left: 10.w),
            child:Image.asset(model.imageUrl.toString(),
                height: 190.h, width: 115.94.w, fit: BoxFit.cover),
                ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10 ),
                  child: Text(
                    model.name.toString(),
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Color(0xff242126),
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  model.subtitle.toString(),
                  style: const TextStyle(
                    color: Color(0xff242126),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: const [
                    Icon(Icons.star, color: Color(0xffFF6EA1)),
                    Icon(Icons.star, color: Color(0xffFF6EA1)),
                    Icon(Icons.star, color: Color(0xffFF6EA1)),
                    Icon(Icons.star, color: Color(0xffFF6EA1)),
                    Icon(Icons.star, color: Color(0xff212121)),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  model.description.toString(),
                  style: const TextStyle(color: Color(0xff242126), fontSize: 10),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffFF6EA1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Add to cart",
                          style:
                              TextStyle(color: Color(0xffFFFFFF), fontSize: 11),
                        )),
                    SizedBox(
                      width: 8.w,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffFFFFFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Add to cart",
                          style:
                              TextStyle(color: Color(0xff212121), fontSize: 11),
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
