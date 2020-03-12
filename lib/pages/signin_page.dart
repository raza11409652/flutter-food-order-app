import 'package:flutter/material.dart';
import 'package:zeego/pages/signup_page.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool toggleVisiblity= true ; 
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   toggleVisiblity = true ;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Padding(padding:EdgeInsets.all(10.0) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Text("Sign In"  , style: TextStyle(fontSize: 24.0 , 
            fontWeight: FontWeight.bold) ,
            ) , 
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                    child: Text("Forget Password" , style: TextStyle(
                    color: Colors.redAccent
                  ),),
                  onTap: (){

                  },
                )
              ],
            ),
            SizedBox(height: 10.0,),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                  child: Column(
                 children: <Widget>[
                   TextFormField(
                     decoration: InputDecoration(hintText: "Your email"
                     ),
                   ) ,
                   TextFormField(
                     obscureText: toggleVisiblity,
                     decoration: InputDecoration(
                       hintText: "Your password" , 
                       suffixIcon: IconButton(
                         onPressed: (){
                           setState(() {
                             toggleVisiblity = !toggleVisiblity;
                           });
                         },
                        icon: toggleVisiblity ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                       )
                     ),
                     
                   )
                 ],
                ),
              ),
            ),
            SizedBox(height: 16.0,)
            ,
            GestureDetector(
                          child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child:Center(child: Text("Sign in" ,style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),),
              ),
              onTap: (){

              },
            ) , 
            MaterialButton(padding: EdgeInsets.all(10.0),
            onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext ctx)=>SignUp())
              );
            },
            textColor: Colors.redAccent,
            child: Text("Don't have account Sign up"),
            )
          
          ],
        ),
      ),
    );
  }
}