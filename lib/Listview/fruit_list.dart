import 'package:flutter/material.dart';

class FruitList extends StatelessWidget {
  const FruitList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit List'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        //physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'List of fruits',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            title: Text('Apple'),
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            title: Text('Banana'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1878&q=80'),
            ),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            title: Text('Banana'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1878&q=80'),
            ),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            title: Text('Apple'),
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            title: Text('Pineapple'),
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80')),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
