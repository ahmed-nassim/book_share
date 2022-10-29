import 'package:flutter/material.dart';
class LibraryTitle extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function() onPress;
  const LibraryTitle(
      {Key? key, required this.title, required this.onPress, required this.isSelected})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(title, style: TextStyle(fontSize: 17,
                color: isSelected ? const Color(0xffFF6EA1) : const Color(
                    0xff242126)),)
          ],
        ),
      ),
    );
  }
}
class Library{
  String? name ,imageUrl ;
  Color color;
  Library({required this.name,required this.imageUrl,required this.color});
}