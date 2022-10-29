import 'package:flutter/material.dart';

import 'model.dart';

class LibraryController{

  int selectedItem = 0;
  List<String> title= [ "General","New  ","Most Viewed"];

}
final List<Library> library=[
  Library(name: "Biography",
      imageUrl: "assets/images/biography.png",
      color: const Color(0xff35BEE0)),
  Library(name: "Business",
      imageUrl: "assets/images/business.png",
      color: const Color(0xff59499E)),
  Library(name: "Children",
      imageUrl: "assets/images/children.png",
      color: const Color(0xff5CBA47)),
  Library(name: "Cookery",
      imageUrl: "assets/images/cookery.png",
      color: const Color(0xffFF6EA1)),
  Library(name: "Fiction",
      imageUrl: "assets/images/fiction.png",
      color: const Color(0xff8589EF)),
  Library(name: "Graphic Novels",
      imageUrl: "assets/images/graphic_novels.png",
      color: const Color(0xffFFC611)),


];