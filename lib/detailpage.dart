import 'package:flutter/material.dart';
import 'package:uts_pmo_app/homepage.dart';

class detailpage extends StatefulWidget {
  const detailpage({Key? key}):super(key: key);

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
              children: [
                Container(
                height:height  * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/pizza1.jpg") ) ),
              ),
              Positioned(
                top: 16,
                left: 16,
                child: GestureDetector(
                onTap: () {
    
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => homepage()),
                  );
                },
                    
                child: Container(
                  child: Icon(Icons.arrow_back,
                  color: Colors.white),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
               ), ),
              
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  child: Icon(Icons.bookmark,
                  color: Colors.white,),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("Pizza Ayam",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                height: height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
              )
              ],
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(
                          width: 5,
                        ),
                        Text("4.5 (32 Review)",
                        style: TextStyle(fontSize: 12))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.menu, color: Colors.grey),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Request Topping",
                        style: TextStyle(fontSize: 12))
                      ], 
                    )
                  ],
                ),
              ),
        
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Card(
                color: Colors.amber[100],
               child: Padding(
                 padding: const EdgeInsets.all(16),
                 child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                 [Column(
                  children: [
                    Text("Ada Promo Untuk Kamu",
                    style: TextStyle(fontSize: 12)),
                    Text("Dapatkan Diskon 100 Ribu",
                    style: TextStyle(fontSize: 11))
                  ],
                 ),
                 ElevatedButton(onPressed: () {}, child: Text("Tukar"))
                 ],
                 ),
               ),
               ),
             ),
        
             desc(
              title: "Harga",
              detail: "Rp. 100.000",
             ),
              desc(
                title: "Deskripsi",
                detail: "Rasakan kelezatan Pizza Ayam Favorit kami! Terbuat dari adonan pizza yang lembut dan renyah, dipadukan dengan saus tomat yang segar, dan keju mozzarella yang melimpah. Topping utamanya adalah potongan ayam panggang yang gurih dan juicy. Ditambah dengan paprika, bawang bombay, dan jamur untuk sensasi rasa dan tekstur yang memuaskan. Taburan oregano dan basil menambah aroma yang menggugah selera.",
                ),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("Ulasan",
                           style: TextStyle(
                             fontSize: 15,
                             fontWeight: FontWeight.bold
                           ),),
                ),

            komen(
              name: "Gung Ary Jagat",
              comment: "Pizza ayam ini luar biasa lezat! Potongan ayam yang juicy dan bumbu yang kaya benar-benar membuat rasanya istimewa. Tambahan paprika dan bawang bombay memberikan tekstur dan rasa yang sempurna, sementara keju mozzarella yang meleleh di atasnya menambah sentuhan gurih yang memanjakan lidah. ",
            ),
            komen(
              name: "Java Iswamitra",
              comment: "Setiap gigitan penuh dengan kelezatan. Sangat direkomendasikan untuk siapa saja yang mencari pengalaman pizza yang memuaskan!"
              ),
            komen(
              name: "Bintang Padma",
              comment: "Topping tambahan seperti paprika dan bawang bombay menambah tekstur dan rasa yang membuat pizza ini semakin menarik. Sempurna untuk makan malam bersama teman atau keluarga!",
            ),
            ],
            ),
            ),
      ),
    );
    
  } 
}

class komen extends StatelessWidget {
  final String name;
  final String comment;
  const komen({
    Key? key,
    required this.name,
    required this.comment})
  :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                "https://studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg",
                width: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber)
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(comment,
          style: TextStyle(
            fontSize: 12
          ),)
        ],
      ),
    );
  }
}

class desc extends StatelessWidget {
  final String title;
  final String detail;
  const desc({
    Key? key,
    required this.title,
    required this.detail})
  :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(title,
         style: TextStyle(
           fontSize: 15,
           fontWeight: FontWeight.bold
         ),),
         Text(detail,
         style: TextStyle(
           fontSize: 15
         ),)
       ],
      ),
    );
  }
}