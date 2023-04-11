import 'package:flutter/material.dart';

const kHeadlineColor = Color(0xFF80cbff);
class Box extends StatelessWidget {
  Box({required this.seatn, required this.seatpos,required this.seatSelect});
  final seatn;
  final seatpos;
  final seatSelect;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: seatn==seatSelect ? Colors.blue.shade900 : kHeadlineColor,
    shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Colors.indigoAccent,
    ),
    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
  ),
   
      child: ListTile(
       
        title: Text(
         
          seatn.toString(),
          textAlign: TextAlign.center,
            style: TextStyle(color: seatn==seatSelect ? Colors.white : Colors.black)

        ),
        subtitle: Text(
          seatpos,

          textAlign: TextAlign.center,
          style: TextStyle(color: seatn==seatSelect ? Colors.white : Colors.black)
        ),
      ),
    );
  }
}