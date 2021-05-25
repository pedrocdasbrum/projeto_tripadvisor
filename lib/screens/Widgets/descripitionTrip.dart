import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_tripadvisor/models/trip.dart';

class DescripitionTrip extends StatelessWidget {
  final Trip trip;

  DescripitionTrip(this.trip);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Conheça as Maravilhas da Capital Francesa!",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.lightBlue,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            this.trip.descripition.toString(),
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
