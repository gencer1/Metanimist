import 'package:flutter/material.dart';
import 'package:metanimist/constants.dart';
import 'package:metanimist/screens/home/components/featured_plants.dart';
import 'package:metanimist/screens/home/components/header_with_searchbox.dart';
import 'package:metanimist/screens/home/components/recomends_plants.dart';
import 'package:metanimist/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          const RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
