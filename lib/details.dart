import 'package:flutter/material.dart';

class Details extends StatefulWidget {
 
  final  data;
  const Details({super.key, this.data});

  @override
  State<StatefulWidget> createState() => _Details();
}

class _Details extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(endDrawer: const Drawer(),
      appBar: AppBar(  backgroundColor: Colors.grey[200],elevation: 0.0,
      title:  const Row( mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.shopping_bag_rounded,color: Colors.black,),
        Text(" Ecommerce ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), ),
        Text("Bashar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))
      ],),
      iconTheme: const IconThemeData(color: Colors.black),
        ),
      body: Column(children: [
        Container(
          color: Colors.grey,
          height: 400,
          child: PageView.builder(
            itemCount: widget.data["Images"].length,
            itemBuilder: (context,index)=>Image.asset(widget.data["Images"][index],fit: BoxFit.contain,)
          ),
        ),
        Expanded(
          child: ListView(children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
          Text(widget.data["title"],style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
          Text(widget.data["subtitle"],style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
           Text(widget.data["price"],style: const TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 30),),

                ],) ]),
        ),
        Container(width:1000,margin:const EdgeInsets.all(10),alignment: Alignment.center ,color: Colors.black,child: Text("Add Cat",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),)
      ]),
    );
  }
}
