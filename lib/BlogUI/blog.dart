import 'package:flutter/material.dart';

import 'package:flutter_application_1/BlogUI/data.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.white,
      useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    home: const Blog(),
  ));
}

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.category_rounded),
          title: const Text('Categories'),
          centerTitle: true,
          actions: const [
            Icon(Icons.search_rounded),
            SizedBox(
              width: 15,
            )
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TabBar(
              labelPadding: EdgeInsets.all(12),
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.deepOrange,
              indicatorColor: Colors.deepOrange,
              isScrollable: true,
              tabs: [
                Text('For you'),
                Text('Design'),
                Text('Beauty'),
                Text('Education'),
                Text('Entertainment'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
                padding: const EdgeInsets.all(15),
                itemCount: articles.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemBuilder: (context, index) {
                  return BlogTile(index: index);
                }),
            const Center(
              child: Text(
                'Design',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(
              child: Text(
                'Beauty',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(
              child: Text(
                'Education',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(
              child: Text(
                'Entertainment',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 1,
          elevation: 3,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blueAccent,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.folder), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final int index;
  const BlogTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map article = articles[index];
    return SizedBox(
      child: Stack(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.015,
            // width: MediaQuery.of(context).size.width * 0.25,
            height: 100,
            width: 100,
            color: Colors.blueGrey[100],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1520454974749-611b7248ffdb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                    )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        article['title'],
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(children: [
                          const WidgetSpan(
                              child: CircleAvatar(
                            radius: 15,
                          )),
                          const WidgetSpan(
                              child: SizedBox(
                            width: 10,
                          )),
                          TextSpan(text: article['author']),
                          const WidgetSpan(
                              child: SizedBox(
                            width: 20,
                          )),
                          TextSpan(text: article['time'])
                        ]),
                      )
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
