import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_pmo_app/detailpage.dart';
import 'package:uts_pmo_app/widget/category.dart';
import 'package:uts_pmo_app/widget/menu.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Tersimpan"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil")
      ]), 
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 140, width: double.infinity, color: Colors.blue),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft, 
                                  height: 45, 
                                  width: 45,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg")),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2))),
                                      SizedBox(
                                        width: 10,),
                                        Text("Halo Kawan, Selamat Datang !",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                              ],
                            ),
                             Container(
                          alignment: Alignment.topRight, 
                          child: Icon(Icons.notifications_active, 
                          color: Colors.white,
                          size: 30,)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Color(0xFFF5F5F7),borderRadius: BorderRadius.circular(30)),
                          child: TextField(cursorHeight: 30,autofocus: false,decoration: InputDecoration(hintText: "Cari Makanan Favoritmu!",prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(30))),
                        )
                          ),
                      ),
                    ],
                  )
                ], 
              ),
               Padding(
                        padding: const EdgeInsets.all(13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(child: Category(imagePath: "assets/iconpizza.png",title:  "Pizza")),
                            Expanded(child: Category(imagePath: "assets/pasta.png",title:  "Pasta")),
                            Expanded(child: Category(imagePath: "assets/burger.png",title:  "Burger")),
                            Expanded(child: Category(imagePath: "assets/drink.png",title:  "Drink")),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Menu Favorit 🍕",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      
              pizzashop(
                imagePath: "assets/pizza1.jpg", 
                menupizza: "Pizza Ayam", 
                rating: "4.5", 
                topping: "Request Topping"
                ),
                 ElevatedButton
                 (onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: ((context) =>  detailpage())));
                 }, child: Text("Beli")),

                 pizzashop(
                imagePath: "assets/pizza2.jpg", 
                menupizza: "Pizza Babi", 
                rating: "4.0", 
                topping: "Request Topping"
                ),
            ElevatedButton
                 (onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: ((context) =>  detailpage())));
                 }, child: Text("Beli")),

                 pizzashop(
                imagePath: "assets/pizza3.jpg", 
                menupizza: "Pizza Sapi", 
                rating: "5.0", 
                topping: "Request Topping"
                ),
                ElevatedButton
                 (onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: ((context) =>  detailpage())));
                 }, child: Text("Beli")),

              
            ],
        )),
      ),
    );
    
  }
}

