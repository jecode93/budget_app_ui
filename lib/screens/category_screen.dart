import 'package:budger_app_ui/helpers/color_helper.dart';
import 'package:budger_app_ui/models/category_model.dart';
import 'package:budger_app_ui/models/expense_model.dart';
import 'package:budger_app_ui/widgets/radial_painter.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final Category? category;
  const CategoryScreen({Key? key, this.category}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    double containerMarginAndPadding = 20.0;
    double containeHeight = 250.0;
    double totalAmountSpent = 0;
    widget.category!.expenses!.forEach((Expense expense) {
      totalAmountSpent += expense.cost!;
    });
    final amountLeft = widget.category!.maxAmount - totalAmountSpent;
    final double percent = amountLeft / widget.category!.maxAmount;
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
              child: CustomPaint(
                foregroundPainter: RadialPainter(
                  bgColor: Colors.grey[200],
                  lineColor: getColor(context, percent),
                  percent: percent,
                  width: 15.0,
                ),
                child: Center(
                  child: Text(
                    '\$${amountLeft.toStringAsFixed(2)} / \$${widget.category!.maxAmount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
