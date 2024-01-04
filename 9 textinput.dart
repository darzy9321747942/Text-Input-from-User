import 'dart:html';

import 'package:flutter/material.dart';

class input extends StatefulWidget {
  const input({super.key});

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  var email =TextEditingController();
    var pass =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "enter email",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 1),
                  ),

                  prefixIcon: IconButton(
                    icon: Icon(Icons.mail),
                    onPressed: () {
                      
                    },
                ),
              ),
              ),

              SizedBox(height: 10,),
             TextField(
              controller: pass,
              obscureText: true,
                decoration: InputDecoration(
                  hintText: "enter Password",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color.fromARGB(255, 21, 200, 30), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 1),
                  ),

                  prefixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {
                      
                    },
                ),
              ),
              ),
              SizedBox(height: 10),
              Container(
                
                child: ElevatedButton(onPressed: (){
                String uname =email.text.toString();
                String passs =pass.text;
                print("Email:$uname, password:$passs");
                }, child: Text("Login"),),
              ),
              
             










            ],
          ),
        ),
      ),
    );
  }
}
