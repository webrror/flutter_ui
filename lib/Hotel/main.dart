import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // * DATA
  List buttons = [
    [
      const Icon(
        CupertinoIcons.bed_double_fill,
        color: Colors.white,
        size: 26,
      ),
      'Hotel',
      Colors.pink
    ],
    [
      const Icon(
        Icons.restaurant_rounded,
        color: Colors.white,
        size: 26,
      ),
      'Restaurant',
      Colors.blue
    ],
    [
      const Icon(
        Icons.coffee_rounded,
        color: Colors.white,
        size: 26,
      ),
      'Cafe',
      Colors.orange
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border))
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 100),
          child: Column(
            children: [
              const Text(
                'Type your location',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 15, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            borderSide: BorderSide(color: Colors.blueGrey)),
                        hintText: 'Kathmandu',
                        prefixIcon: const Icon(Icons.search_rounded),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(40))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[50],
        elevation: 0,
      ),
      body: Column(
        children: [CategoryButtons(buttons: buttons), const HotelCard()],
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  const HotelCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          height: 350,
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80'))),
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_border_rounded,
                          color: Colors.white,
                        )),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                              child: Text(
                            '\$40',
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                      )),
                ]),
              ),
              Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Room in Bali',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Text(
                      'Bali, Indonesia',
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star_rounded,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('(220 reviews)')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButtons extends StatelessWidget {
  const CategoryButtons({
    Key? key,
    required this.buttons,
  }) : super(key: key);

  final List buttons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 20.0, left: 25, right: 25, bottom: 10),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: buttons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisExtent: 95, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: buttons[index][2]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttons[index][0],
                const SizedBox(
                  height: 10,
                ),
                Text(
                  buttons[index][1],
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
