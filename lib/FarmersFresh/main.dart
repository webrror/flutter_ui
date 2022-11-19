import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/FarmersFresh/widgets/carousel.dart';
import 'package:flutter_application_1/FarmersFresh/widgets/catgrid.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    darkTheme: ThemeData.dark(),
    home: const Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            title: Text('Farmers Fresh Zone'.toUpperCase()),
            actions: [
              Row(
                children: const [
                  Icon(Icons.location_on_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Kochi'),
                  Icon(Icons.arrow_drop_down_outlined),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: const Icon(Icons.search_outlined),
                        hintText: 'Search for vegetables and fruits ...',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FilterChip(
                    onSelected: (value) {},
                    label: Text(
                      'Vegetables'.toUpperCase(),
                    ),
                  ),
                  FilterChip(
                      onSelected: (value) {},
                      label: Text('Fruits'.toUpperCase())),
                  FilterChip(
                      onSelected: (value) {},
                      label: Text('Exotic'.toUpperCase())),
                  FilterChip(
                      onSelected: (value) {},
                      label: Text('Fresh'.toUpperCase())),
                ],
              ),
            ),
            const CarouselFarmers(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/stopwatch.png',
                          width: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '30 mins policy'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 12, letterSpacing: -0.1),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/smartphone.png',
                          width: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Traceability'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 12, letterSpacing: -0.1),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/farmer.png',
                          width: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Local Sourcing'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 12, letterSpacing: -0.1),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Text(
                'Shop By Category',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const CategoryGrid()
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: 'Home'.toUpperCase()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart_outlined),
              label: 'Cart'.toUpperCase()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline_rounded),
              label: 'Account'.toUpperCase())
        ],
      ),
    );
  }
}
