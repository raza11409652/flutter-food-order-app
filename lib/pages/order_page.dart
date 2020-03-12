
import 'package:flutter/material.dart';
import 'package:zeego/pages/signin_page.dart';
import 'package:zeego/widget/order_card.dart';
import 'package:upi_india/upi_india.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  Future _transaction;
  bool isTransaction =false ; 

  Future<String> initiateTransaction(String app) async {
    UpiIndia upi = new UpiIndia(
      app: app,
      receiverUpiId: '9815963210@paytm',
      receiverName: 'Tester',
      transactionRefId: 'TestingId',
      transactionNote: 'Not actual. Just an example.',
      amount: 1.00,
    );

    String response = await upi.startTransaction();

    return response;
  }

@override
  void initState() {
    super.initState();
    isTransaction = false;
  }

  @override
  Widget build(BuildContext context) {
   
      
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Food Cart"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0
        ),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        OrderCard() , 
        // OrderCard() , 
        _buildTotalContainer(),
    

      ],
    ),
    ) ;
  }


 Widget _buildTotalContainer() {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10.0),
              child: Column(
          children: <Widget>[
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero ,
              leading: Text("Cart Total"),
              trailing: Text("13.0"),
            ) , 
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero ,
              leading: Text("Discount"),
              trailing: Text("1.0"),
              ) , 
             ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero ,
              leading: Text("Discount"),
              trailing: Text("1.0"),
            ) , 
            Divider(
              color: Colors.black38,
            ) , 
            ListTile(dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Text("Sub Total"),
              trailing: Text("100.0"),
              
            ) , 
            MaterialButton(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0 , 
                vertical: 14.0
              ),
              onPressed: (){
               print("Check out button preese");
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext ctx)=>SignIn())
                ) ; 
                // _transaction = initiateTransaction(UpiIndiaApps.AmazonPay);
              },
              textColor: Colors.white,
            color: Colors.redAccent,
            child: Text("Proceed to checkout"),
            )  ,
            GestureDetector(
              onTap: (){
                _showBottomSheet();
              },
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45.0),
                  color: Colors.redAccent
                ),
                child: Center(
                  child:Text("Show bottom navigation",style: TextStyle(
                    color: Colors.white
                  ),)
                  ),
              ),
            ) 
            // transaction(isTransaction)
            ],
        ),
        
      ),

    );
  }


Column _buildBottomSheet(){
 return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.visibility),
          title: Text("Hello"),
          onTap: (){
              Navigator.pop(context);
          },
        )  ,
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Option 2"),
        )
      ],
    ) ;
}
void _showBottomSheet(){
  showModalBottomSheet(context: context, 
  builder: (context){
    return Container(
     color: Color(0xFF737373),
     child: Container(
        decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(10),
          topRight: const Radius.circular(10)
        )
      ),
      child: _buildBottomSheet(),
     ),
    ) ;
   
  }) ; 
}
 
    
  
}