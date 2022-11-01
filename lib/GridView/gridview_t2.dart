import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewTTwo extends StatelessWidget {
  const GridViewTTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView T2'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        // crossAxisSpacing: 1,
        // mainAxisSpacing: 1,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              children: [
                Container(
                  height: 190,
                  decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1560714697-f2586b77368e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80'))),
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Paris',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Text('Text $index')
              ],
            ),
          );
        }),
      ),
    );
  }
}
