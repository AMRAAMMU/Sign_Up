import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emTxt =  TextEditingController();
  TextEditingController passTxt = TextEditingController();

  bool  _obscureText= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/travel-aesthetic-phone-y6f47qias6u88axb.jpg'),
    fit: BoxFit.fill
    )
    ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Let's go",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
            ),
          ),
          Text('Traveling arround the world.',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w100,
                fontSize: 20
            ),
          ),
              SizedBox(height: 100),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    color:Colors.black12.withOpacity(0.3) ,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  controller: emTxt,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.white60
                    ),
                    hintText: 'Enter the email',
                    icon: Icon(Icons.mail_outline,
                      color: Colors.white60,
                    )
                  ) ,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10),
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    color:Colors.black12.withOpacity(0.3) ,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  controller: passTxt,
                  obscureText: _obscureText,
                  obscuringCharacter: '.',
                  textAlign: TextAlign.start,

                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          _obscureText=!_obscureText;
                        });
                      },
                      child:  const Icon(Icons.visibility,color: Colors.white60,),
                    ),

                    border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.white60
                    ),
                    hintText: 'Enter your password',
                    icon: Icon(Icons.key,
                      color: Colors.white60,
                    )
                  ),
                ),
              ),
              SizedBox(height:30),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white54,

                  ),
                    onPressed: (){

                },
                    child: Text('Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 170,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed:(){},
                      child: Text('             SignUp',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                        ),
                      ),
                  ),
                  TextButton(onPressed:(){},
                    child: Text('          Forgot Password',
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 15
                      )
                    ),
                  ),
                ],
              )
            ]
    )
        )
    );
  }
}
