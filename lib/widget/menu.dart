import 'package:flutter/material.dart';

class pizzashop extends StatelessWidget {
  final String imagePath;
  final String menupizza;
  final String rating;
  final String topping;
  const pizzashop({
    Key? key,
    required this.imagePath,
    required this.menupizza,
    required this.rating,
    required this.topping,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, 
      height: 240, 
      child: Stack(
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 10,
          child: Column(
            children: [
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Image.asset(imagePath, 
            fit: BoxFit.cover,))
        ],
        ),
      ),
      Positioned(
        bottom: 0,
        left: 10,
        child: SizedBox(
          height: 70,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(menupizza,
              style: TextStyle(
                fontSize: 17, 
                fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,),
               Row(children: [Icon(Icons.star, color: Colors.amber),
               SizedBox(
                width: 5,
               ),
               Text(rating),
               SizedBox(
                width: 20),
               Icon(Icons.menu, color: Colors.grey),
               SizedBox(
                width: 5),
                Text(topping, 
                style: TextStyle(
                  fontSize: 12, 
                  fontWeight: FontWeight.bold))
               ],
               )
                ],
                ),
        ),
        ))
    ],
              ));
  }
}

