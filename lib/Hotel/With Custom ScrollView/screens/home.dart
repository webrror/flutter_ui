import 'package:flutter/material.dart';
import 'package:flutter_application_1/Hotel/With%20Custom%20ScrollView/widgets/appBar.dart';
import 'package:flutter_application_1/Hotel/With%20Custom%20ScrollView/widgets/hotelPackages.dart';
import 'package:flutter_application_1/Hotel/With%20Custom%20ScrollView/widgets/title.dart';

import '../widgets/popularHotels.dart';
import '../widgets/searchField.dart';

class CustomScrollViewHome extends StatefulWidget {
  const CustomScrollViewHome({super.key});

  @override
  State<CustomScrollViewHome> createState() => _CustomScrollViewHomeState();
}

class _CustomScrollViewHomeState extends State<CustomScrollViewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: CustomScrollView(
        slivers: [
          const AppBarCustom(),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 20,
            ),
            const SearchField(),
            const SizedBox(
              height: 25,
            ),
            const TitleCustom(
              title: 'Popular Hotel',
            ),
            const SizedBox(
              height: 20,
            ),
            const PopularHotels(),
            const SizedBox(
              height: 10,
            ),
            const TitleCustom(
              title: 'Hotel Packages',
              button: true,
              buttonText: 'View All',
            ),
            const SizedBox(
              height: 10,
            ),
            HotelPackage()
          ]))
        ],
      ),
    );
  }
}
