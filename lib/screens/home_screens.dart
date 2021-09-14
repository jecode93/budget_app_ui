import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            forceElevated: true,
            expandedHeight: 100.0,
            leading: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Simple Budget UI'),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ],
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                height: 100.0,
              );
            }),
          ),
        ],
      ),
    );
  }
}


// appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.settings),
//           onPressed: () {},
//         ),
//         actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
//       ),