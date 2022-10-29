import 'model.dart';

class OnBoardingController {
  int currentPage = 0;

  List<OnBoarding> models = [
    OnBoarding(
        imageUrl: "assets/images/Books.png",
        title: "Share Your Favourite Books\nWith Your Family And Friends",
        ),
    OnBoarding(
        imageUrl: "assets/images/book_lover.png",
        title: "Discovery 20 Million \nBooks Shelved Online",
        ),
    OnBoarding(
        imageUrl: "assets/images/business_shop.png",
        title: "Buy And Sell Books With Us",),
  ];
}
