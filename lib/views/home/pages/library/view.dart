import 'package:book_share/views/home/pages/library/controller.dart';
import 'package:flutter/material.dart';
import '../../../../core/search_bar.dart';
import 'model.dart';
class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);
  @override
  State<LibraryPage> createState() => _LibraryPageState();
}
class _LibraryPageState extends State<LibraryPage> {
  final controller = LibraryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SearchBar(),
              Row(
                children: List.generate(
                  controller.title.length,
                  (index) => LibraryTitle(
                    isSelected: index == controller.selectedItem,
                    onPress: () {
                      controller.selectedItem = index;
                      setState(() {});
                    },
                    title: controller.title[index],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(itemCount: library.length,
                  padding: const EdgeInsets.all(20),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 25,
                      mainAxisExtent: 210,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: library[index].color,
                      ),

                        child: SingleChildScrollView(
                          child:     Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                library[index].name!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(library[index].imageUrl!,
                                    height: 120, width: 100, fit: BoxFit.cover),
                              )
                            ],
                          ),
                        ),


                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
