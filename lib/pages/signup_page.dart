import 'package:flutter/material.dart';
import 'package:zeego/pages/signin_page.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Sign UP" , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),),
            Card(
            
              child: Padding(
                            padding: EdgeInsets.all(10.0),
                              child: Column(
                  children: <Widget>[
                     TextFormField(
                       keyboardType:TextInputType.emailAddress ,
                       obscureText: false,
                       decoration: InputDecoration(
                         hintText: "Email" , 
                         
                       ),
                       
                     ),
                     TextFormField(
                       keyboardType: TextInputType.emailAddress,
                       obscureText: false,
                       decoration: InputDecoration(
                         hintText: "Your Name" , 
                         
                       ),
                       
                     ) , 
                     TextFormField(
                       obscureText: true,
                       decoration: InputDecoration(
                         hintText: "Your password" , 
                         
                       ),
                       
                     ) , 
                    
                  ],
                ),
              ),
            ) , 
            SizedBox(height: 10.0,) , 
            Container(
              
              height: 50.0,
              decoration: BoxDecoration(
                color:Colors.blueAccent,
                borderRadius: BorderRadius.circular(45.0)
              ),
              child: Center(child: Text("Sign up" , style: TextStyle(color: Colors.white  ,fontWeight: FontWeight.bold),)),

            ) , 
            MaterialButton(onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext ctx)=>SignIn())
              );
            }  ,
            child: Text("Sign in"),
            textColor: Colors.red,
            )

          
          ],
        ),
      ),
    );
  }
}