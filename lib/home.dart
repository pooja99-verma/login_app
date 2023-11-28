import 'package:flutter/material.dart';
import 'package:login_app/Fruitscreen/Fruits.dart';

import 'Mobilescreen/Mobile.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen"),),
       body: Container(child: Padding(
          padding: const EdgeInsets.all(10.0),
            child: GridView(children: [
              Spacer(),
              InkWell(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileList()));
                 },
                  child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),color: Colors.purple),
                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone_android,size: 50,color: Colors.white,),
                           Text("Mobiles",style: TextStyle(color: Colors.blueGrey,fontSize: 30),)
                ],),
              ),
              ),
                       InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>FruitList()));
                   },
                          child: Container(decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.purple),
                            child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart,size: 50,color: Colors.white,),
                             Text("Fruits",style: TextStyle(color: Colors.blueGrey,fontSize: 30),)
                       ],),
                   ),
                  ),
             ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      ),),
       ) );
  }
}