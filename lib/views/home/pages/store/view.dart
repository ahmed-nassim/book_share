import 'package:book_share/core/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/item_book.dart';
import 'controller.dart';

class StorePage extends StatelessWidget {
  final controller =  StoreController();
   StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(child:
          Column(
            children: [
              SizedBox(height: 44.h,),
              const SearchBar(),
              SizedBox(height: 21.h,),
              ListView.builder( scrollDirection: Axis.vertical,
                  shrinkWrap: true
                ,padding: const EdgeInsets.only(bottom: 30),
                itemBuilder: (context, index) =>
                    ItemBook(model: controller.products[index]),
                itemCount: controller.products.length,
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
