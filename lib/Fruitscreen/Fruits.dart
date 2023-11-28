
import 'package:flutter/material.dart';
import 'package:login_app/Fruitscreen/FruitDataModel.dart';
import 'package:login_app/Fruitscreen/FruitDetail.dart';

class FruitList extends StatefulWidget {
const FruitList({ Key? key }) : super(key: key);

@override
_FruitListState createState() => _FruitListState();
}

    class _FruitListState extends State<FruitList> {
    static List<String> fruitname =['Apple','Banana','Mango','Orange','pineapple'];
    static List url = ['https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
      'https://media.istockphoto.com/photos/mango-fruit-picture-id1318935291?b=1&k=20&m=1318935291&s=170667a&w=0&h=oE4HCeBbUOdx6EKBlGVIsswuK_n7ncqgtPnT1vVjo9A=',
      'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
      'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'];
      final List<FruitDataModel> Fruitdata = List.generate(
       fruitname.length,
      (index) => FruitDataModel('${fruitname[index]}', '${url[index]}'));
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                      appBar: AppBar(title: Text('Fruits'),),
                     body: ListView.builder(
                        itemCount: Fruitdata.length,
                         itemBuilder: (context,index){
                                return Card(
                                   child: ListTile(
                                     title: Text(Fruitdata[index].name),
                                    leading: SizedBox(
                                     width: 50,
                                     height: 50,
                                         child: Image.network(Fruitdata[index].ImageUrl),
                                ),
                                      onTap: (){
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FruitDetail(fruitDataModel: Fruitdata[index],)));
                   },
           ),
          );
}
)
);
}
}


