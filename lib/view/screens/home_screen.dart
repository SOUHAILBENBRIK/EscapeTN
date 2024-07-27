import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kid_ask/model/destination_model.dart';
import 'package:kid_ask/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          const SizedBox(
            width: 15,
          )
        ],
        title: Container(
          width: Constants.getWidth(context) * 0.35,
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.withOpacity(0.1)),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/user.svg",
                width: 45,
                height: 45,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Souhail")
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: Constants.getWidth(context),
          child: Column(
            children: [
              SizedBox(
                height: Constants.getHeight(context) * 0.02,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: Constants.getWidth(context),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      text: "Explore the \nBeautiful",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 40),
                      children: [
                        TextSpan(
                          text: " world!",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 45,
                                  color: Constants.orangeColor),
                        )
                      ]),
                ),
              ),
              bestDestination(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget destinationWidget(BuildContext context, DestinationModel element) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: Constants.getWidth(context) * 0.7,
      child: Column(
        children: [
          SizedBox(
            height: Constants.getHeight(context) * 0.4,
            width: Constants.getWidth(context) * 0.7,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    element.imagePath,
                    fit: BoxFit.fill,
                    height: Constants.getHeight(context) * 0.4,
                    width: Constants.getWidth(context) * 0.7,
                  ),
                ),
                Positioned(
                    left: Constants.getWidth(context) * 0.55,
                    top: 10,
                    child: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.3),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ))))
              ],
            ),
          ),
          SizedBox(height: Constants.getHeight(context)*0.015,),
          Row(
            children: [
              SizedBox(width: 10,),
              Text(
                element.name,
                style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Text(element.rating.toString()),
              SizedBox(width: 5,),
              Icon(Icons.star_sharp,color: Colors.amber,)
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.location_on),
              SizedBox(width: 5,),
              Text(element.location,style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.8)),)
            ],
          )
        ],
      ),
    );
  }

  bestDestination(BuildContext context) {
    return SizedBox(
      width: Constants.getWidth(context),
      child: Column(
        children: [
          SizedBox(
            height: Constants.getHeight(context) * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: Constants.getWidth(context) * 0.05,
              ),
              Text("Best Destination",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
              const Spacer(),
              const Text(
                "View All",
                style: TextStyle(color: Constants.mainColor, fontSize: 20),
              ),
              SizedBox(
                width: Constants.getWidth(context) * 0.1,
              ),
            ],
          ),
          SizedBox(
            height: Constants.getHeight(context) * .04,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Constants.destinations.map((element) {
                  return destinationWidget(context, element);
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
