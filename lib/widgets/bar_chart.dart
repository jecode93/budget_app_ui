import 'package:flutter/material.dart';

class BarChar extends StatelessWidget {
  const BarChar({this.expenses});

  final List<double>? expenses;

  @override
  Widget build(BuildContext context) {
    double iSize = 22.0;
    double mostExpensive = 0;

    expenses!.forEach((double price) {
      if (price > mostExpensive) {
        mostExpensive = price;
      }
    });

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            'Weekly Spending',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          //SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
                iconSize: iSize,
              ),
              Text(
                'Nov 10, 2019 - Nov 16, 2019',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {},
                iconSize: iSize,
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Bar(
                label: 'Su',
                amountSpeen: expenses![0],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Mo',
                amountSpeen: expenses![1],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Tu',
                amountSpeen: expenses![2],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Wed',
                amountSpeen: expenses![3],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Th',
                amountSpeen: expenses![4],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Fr',
                amountSpeen: expenses![5],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Sa',
                amountSpeen: expenses![6],
                mostExpensive: mostExpensive,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  const Bar({this.label, this.amountSpeen, this.mostExpensive});
  final String? label;
  final double? amountSpeen, mostExpensive;

  final double _maxBarHeight = 150.0;
  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpeen! / mostExpensive! * _maxBarHeight;
    return Column(
      children: [
        Text(
          '\$${amountSpeen!.toStringAsFixed(2)}',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Container(
          height: barHeight,
          width: 18.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          label!,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
        ),
      ],
    );
  }
}
