import 'package:ecommerce_ui/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
 

  const HomePage({super.key});

  @override
  State<HomePage> createState() => Home_Page();
}

class Home_Page extends State<HomePage> {
   List car = [
    {
      "Images": ["images/4.png","images/3.png","images/2.png","images/1.png"],
      "title": "Black Car",
      "subtitle": "speed 250",
      "price": "\$30,000"
    },
    {
      "Images": ["images/3.png"],
      "title": "Yellow Car",
      "subtitle": "speed 200",
      "price": "\$25,000"
    },
    {
      "Images":["images/2.png"],
      "title": "Silver Car",
      "subtitle": "speed 150",
      "price": "\$20,000"
    },
    {
      "Images": ["images/1.png"],
      "title": "Red Car",
      "subtitle": "speed 100",
      "price": "\$10,000"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Colors.black,),
        selectedItemColor: Colors.orange,
        items:const [
       BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "*") ,
       BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label:"*"),
       BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: "*"),
      ]),
      body: Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                  child: TextFormField(
                      decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                prefixIcon: const Icon(Icons.search),
                hintText: "Search",
                border: InputBorder.none,
                hintStyle: const TextStyle(color: Colors.grey),
              ))),
              const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu))
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.electric_bike,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "electric",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.mobile_friendly,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Mobile",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.shop,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Shop",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.laptop,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Laptop",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.card_giftcard,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Gifts",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.electric_car,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Cars",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Text("Best Selling",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
  SizedBox(
            height: 400,
            child: GridView.builder( 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 250),
              itemCount: car.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                   onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Details(data:car[index]))),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.grey[400],
                          height: 140,
                          child: Image.asset(car[index]["Images"][0]),
                        ),
                        Text(
                          car[index]["title"],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          car[index]["subtitle"],
                          style:
                              const TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                        Text(
                          car[index]["price"],
                          style: const TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
