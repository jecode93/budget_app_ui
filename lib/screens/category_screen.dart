import 'package:budger_app_ui/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final Category? category;
  const CategoryScreen({Key? key, this.category}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  double containerMarginAndPadding = 20.0;
  double containeHeight = 250.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category!.name.toString()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            iconSize: 30.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(containerMarginAndPadding),
              padding: EdgeInsets.all(containerMarginAndPadding),
              height: containeHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      color: Colors.grey,
                      blurRadius: 6.0,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
