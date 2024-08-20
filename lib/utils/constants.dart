import 'package:flutter/material.dart';
import 'package:kid_ask/model/destination_model.dart';
import 'package:kid_ask/view/widgets/on_boarding_page.dart';

class Constants {
  static const Color mainColor = Color.fromRGBO(13, 110, 253, 1);
  static const Color orangeColor = Color.fromRGBO(255, 112, 41, 1);

  static List<DestinationModel> destinations = [
    DestinationModel(
      name: 'Al-Aqsa Mosque',
      description: 'أحد أقدس المساجد في الإسلام، يقع في القدس.',
      imagePath:
          'https://i0.wp.com/www.touristisrael.com/wp-content/uploads/2020/02/Temple-Mount-Copy-1-scaled-1.jpg?resize=1400%2C788&ssl=1',
      isFavorite: true,
      location: 'القدس، فلسطين',
      rating: 4.9,
    ),
    DestinationModel(
      name: 'El Jem Amphitheatre',
      description: 'مسرح روماني قديم في تونس.',
      imagePath:
          'https://upload.wikimedia.org/wikipedia/commons/3/38/El_Djem_Amphitheater_aerial_view.jpg',
      isFavorite: true,
      location: 'تونس',
      rating: 4.5,
    ),
    DestinationModel(
      name: 'Pyramids of Giza',
      description: 'أهرامات الجيزة الشهيرة في مصر.',
      imagePath:
          'https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg',
      isFavorite: true,
      location: 'الجيزة، مصر',
      rating: 4.8,
    ),
    DestinationModel(
      name: 'Burj Khalifa',
      description: 'أطول برج في العالم، يقع في دبي.',
      imagePath:
          'https://alfaris-uae.com/wp-content/uploads/2023/02/DSC_7356.jpg',
      isFavorite: true,
      location: 'دبي، الإمارات العربية المتحدة',
      rating: 4.7,
    ),
    DestinationModel(
      name: 'Library of Alexandria',
      description: 'مكتبة حديثة تحاكي مكتبة الإسكندرية القديمة.',
      imagePath:
          'https://miro.medium.com/v2/resize:fit:828/format:webp/1*BZpqhOFXaShpAMdYX6l55A.jpeg',
      isFavorite: true,
      location: 'الإسكندرية، مصر',
      rating: 4.6,
    ),
  ];

  static const String geminiApiKey = "AIzaSyDJ1zQQ1qDWHR-d7JFcco4vb1IAlDxJX9U";
  static const String appName = "EscapeTN";

  static double getWidth(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }

  static List<Widget> onBoardingPages = [
    const OnBoardingPage(
      imagePath: "assets/images/intro1.png",
      title: "Life is short and the world is ",
      lastWord: "Wide",
      text:
          "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
    ),
    const OnBoardingPage(
      imagePath: "assets/images/intro2.png",
      title: "It’s a big world out there go ",
      text:
          "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
      lastWord: 'explore',
    ),
    const OnBoardingPage(
      imagePath: "assets/images/intro3.png",
      title: "People don’t take trips, trips take ",
      text:
          "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
      lastWord: 'people',
    ),
  ];
}
