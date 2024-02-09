import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final count;
  final total;
  final Function() onClearState;
  const Result({super.key, this.count, this.total, required this.onClearState});

  @override
  Widget build(BuildContext context) {
    String message = '';
    if (count >= 0 && count <= 0) {
      message = 'You dont know anything, Jon Snow!';
    } else if (count >= 1 && count <= 2) {
      message = 'You know something, Jon Snow!';
    } else {
      message = 'You know everything, Jon Snow!';
    }
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [Color(0xff003399), Color(0xFF0b58b3), Color(0xFF2299dd)],
        ),
      ),
      child: Column(
        children: [
          Container(
            child: Text(
              message,
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'You have $count points of $total',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: onClearState,
            child: Text('Test again',
                style: TextStyle(color: Colors.blue.shade900, fontSize: 20)),
          )
        ],
      ),
    );
  }
}
