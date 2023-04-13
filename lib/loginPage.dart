import 'package:flutter/material.dart';
import 'package:data_passing_onepage_to_anotherpage/passDataSvreen.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
   TextEditingController name = new TextEditingController();

   TextEditingController email = new TextEditingController();

   TextEditingController phone = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter TextField Example'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: email,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'phone',
                      hintText: 'Enter Phone',

                    ),
                  ),
                ),
           Padding(
          padding: EdgeInsets.all(15),
           child:  Container(
             child: ElevatedButton(
               child: Padding(
                 padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                 child: Text('Sign In'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
               ),
               onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=> passDataSvreen(name: name.text, email: email.text, phone: phone.text)));
                 //After successful login we will redirect to profile page. Let's create profile page now

               },
             ),
           ),
        )
              ],
            )
        )
    );
  }
}