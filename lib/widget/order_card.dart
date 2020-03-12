import 'package:flutter/material.dart';
class OrderCard extends StatefulWidget {
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0 , vertical: 10.0
            ),
                      child: Container(
              decoration: BoxDecoration(
                border:Border.all(width: 1.0 , color: Colors.grey),
                borderRadius: BorderRadius.circular(4.0)
              ),
              height: 75.0,
              width: 45.0,
              child: Column(
                children: <Widget>[
                 InkWell(onTap: (){
                  print("Up Arrow Pressed");
                 },child:  Icon(Icons.keyboard_arrow_up),),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 2.0,
                      bottom: 2.0
                      
                    ),
                    child: Text("2" ,style: TextStyle(fontSize: 18.0),),
                  ),
                 InkWell(
                   onTap: (){
                     print("Down Arrow pressed");
                   },
                   child:  Icon(Icons.keyboard_arrow_down),)
                ],
              ),  
            ),
          ),
         Container(
           height: 70.0,
           width: 70.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50.0),
             image: DecorationImage(
               image: AssetImage("assets/images/lunch.jpeg"),
               fit: BoxFit.cover
               ) , 
               boxShadow: [
                 BoxShadow(
                   color: Colors.black,
                   blurRadius: 5.0 , 
                   offset: Offset(0.0 ,0.5)
                 )
               ]
           ),
         )   , 
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               Text("Item Name" ,style: TextStyle(
                 color:  Colors.black , 
                 fontWeight: FontWeight.bold , 
                 fontSize: 18.0
               ),) , 
               Text("10.0" , style: TextStyle(
                 color: Colors.redAccent , 
                 fontSize: 16.0
               ),) , 
               
             ],
           ),
         ) , 
         IconButton(
           onPressed: (){

           },
           icon: Icon(Icons.cancel),
           color: Colors.grey,
         )
    
        ],
      ),
    );
  }
}