import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EcommerceUi extends StatefulWidget {
  const EcommerceUi({super.key});

  @override
  State<EcommerceUi> createState() => _EcommerceUiState();
}

class _EcommerceUiState extends State<EcommerceUi> {

  // * BOTTOM NAVIGATION BAR LOGIC
  int currentIndex = 0;
  void onPress(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  // * DATA
  List buttons = [
    [
      const Icon(
        CupertinoIcons.bolt,
        color: Colors.orange,
      ),
      'Flash Deal'
    ],
    [
      const Icon(
        CupertinoIcons.doc_plaintext,
        color: Colors.orange,
      ),
      'Bill'
    ],
    [
      const Icon(
        CupertinoIcons.gamecontroller,
        color: Colors.orange,
      ),
      'Game'
    ],
    [
      const Icon(
        CupertinoIcons.gift,
        color: Colors.orange,
      ),
      'Daily Gift'
    ],
    [
      const Icon(
        CupertinoIcons.compass,
        color: Colors.orange,
      ),
      'More'
    ],
  ];

  List specialCards = [
    [
      'Smartphones',
      '18 Brands',
      'https://images.unsplash.com/photo-1587131664239-885aa135f8a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2062&q=80'
    ],
    [
      'Fashion',
      '24 Brands',
      'https://images.unsplash.com/photo-1585914924626-15adac1e6402?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80'
    ],
  ];

  List popularCards = [
    [
      'https://images.unsplash.com/flagged/photo-1580234820596-0876d136e6d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1767&q=80',
      'PS4 Controller'
    ],
    [
      'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
      'Nike Shoes'
    ],
    [
      'https://images.unsplash.com/photo-1510878933023-e2e2e3942fb0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1772&q=80',
      'iPhone X'
    ]
  ];

  // * UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      // * APP BAR
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70.0,
        title: TextField(
          decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              filled: true,
              fillColor: Colors.grey[300],
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search Product',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none)),
        ),
        actions: [
          CircleAvatar(
              radius: 23,
              backgroundColor: Colors.grey[300],
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.cart,
                    color: Colors.grey[600],
                  ))),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 23,
            backgroundColor: Colors.grey[300],
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.bell,
                  color: Colors.grey[600],
                )),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),

      // * BODY
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        opacity: 0.2,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1620121692029-d088224ddc74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80')),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple.shade700),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'A Summer Surprise',
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Cashback 20%',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 15, right: 15, bottom: 10),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, mainAxisExtent: 105),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 58,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange[100]),
                        child: buttons[index][0],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        buttons[index][1],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 15),
                      )
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 15, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Special for you',
                    style: TextStyle(fontSize: 22),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See more'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 25.0, right: 10),
                scrollDirection: Axis.horizontal,
                itemCount: specialCards.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              opacity: 1,
                              image: NetworkImage(specialCards[index][2]))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              specialCards[index][0],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              specialCards[index][1],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 15, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Product',
                    style: TextStyle(fontSize: 22),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See more'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 20, right: 10),
                scrollDirection: Axis.horizontal,
                itemCount: popularCards.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[100],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.network(
                              popularCards[index][0],
                              fit: BoxFit.cover,
                              width: 200,
                              height: 180,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              popularCards[index][1],
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),

      // * BOTTOM NAVIGATION BAR
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: Colors.orange[50],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 20,
          currentIndex: currentIndex,
          onTap: onPress,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_alt),
                label: '',
                tooltip: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart),
                label: '',
                tooltip: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble),
                label: '',
                tooltip: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: '',
                tooltip: 'Account')
          ],
        ),
      ),
    );
  }
}
