import 'package:flutter/material.dart';
import 'package:kid_ask/model/destination_model.dart';
import 'package:kid_ask/view/widgets/on_boarding_page.dart';

class Constants {

  
  static const Color mainColor = Color.fromRGBO(13, 110, 253, 1);
  static const Color orangeColor = Color.fromRGBO(255, 112, 41, 1);


  static List<DestinationModel> destinations = [
    DestinationModel(
      name: 'Eiffel Tower',
      description: 'Iconic tower in Paris, France.',
      imagePath: 'https://assets.editorial.aetnd.com/uploads/2011/06/gettyimages-142198198.jpg?width=1920&height=960&crop=1920%3A960%2Csmart&quality=75&auto=webp',
      isFavorite: true,
      location: 'Paris, France', rating: 3.5,
    ),
    DestinationModel(
      name: 'Great Wall of China',
      description: 'Historic wall in China.',
      imagePath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/The_Great_Wall_of_China_at_Jinshanling-edit.jpg/375px-The_Great_Wall_of_China_at_Jinshanling-edit.jpg',
      isFavorite: false,
      location: 'China', rating: 4.2,
    ),
    DestinationModel(
      name: 'Grand Canyon',
      description: 'Famous canyon in Arizona, USA.',
      imagePath: 'https://www.nps.gov/grca/planyourvisit/images/mather-point-2021.jpg?maxwidth=1300&maxheight=1300&autorotate=false',
      isFavorite: true,
      location: 'Arizona, USA', rating: 3.2,
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
