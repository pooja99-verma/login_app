import 'package:flutter/material.dart';
import 'package:login_app/Mobilescreen/MobileDataModel.dart';


class MobileList extends StatefulWidget {
  const MobileList({ Key? key }) : super(key: key);

  @override
  _MobileListState createState() => _MobileListState();
}

class _MobileListState extends State<MobileList> {
  static List<String> mobilename =['Redmi','Realme','Oppo','Vivo','Samsung'];
  static List url = ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRs8tRBwePLsz84ScEw9aclte93Vq8sIT6dw&usqp=CAU',
    'https://images.unsplash.com/photo-1628581878580-0f39a950ad1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmVhbG1lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1609388449750-b504ef6d97f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8b3Bwb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1653674358579-c522b973bcde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHZpdm8lMjBwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1609252924198-30b8cb324d2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNhbXN1bmd8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60'];
  final List<MobileDataModel> Mobiledata = List.generate(
      mobilename.length,
          (index)
      => MobileDataModel('${mobilename[index]}', '${url[index]}'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Mobiles'),),
          body: ListView.builder(
              itemCount: Mobiledata.length,
              itemBuilder: (context,index){
               return Card(
                child: ListTile(
                 title: Text(Mobiledata[index].name),
                   leading: SizedBox(
                width: 50,
                 height: 50,
                     child: Image.network(Mobiledata[index].ImageUrl),
          ),
       ),
      );
       }
    )
    );
  }
}

