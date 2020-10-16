import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/screens/home/components/featured_plants.dart';
import 'package:plant_app_ui/screens/home/components/recomended_plants.dart';
import 'package:plant_app_ui/screens/home/components/title_with_more_btn.dart';

import '../../../constants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recomended",
            press: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreButton(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
