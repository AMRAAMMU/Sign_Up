import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  TextEditingController emTxt =  TextEditingController();
  TextEditingController passTxt = TextEditingController();
  TextEditingController phTxt = TextEditingController();
  TextEditingController nmTxt = TextEditingController();
  TextEditingController comTxt = TextEditingController();
   bool isChecked=false;

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
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Text("SignUp",
    style: TextStyle(
      fontStyle: FontStyle.italic,
    color: Colors.white,
    fontWeight: FontWeight.w800,
    fontSize: 30,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white
    ),
    ),
            SizedBox(height: 50,),
            Container(
                padding: EdgeInsets.only(left: 10),
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    color:Colors.black12.withOpacity(0.3) ,
                    borderRadius: BorderRadius.circular(10)
                ),
        child: TextFormField(
          controller: nmTxt,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Name',
              labelStyle: TextStyle(
                  color: Colors.white60
              ),
              hintText: 'Enter the name',
              icon: Icon(Icons.person_outline,
                color: Colors.white60,
              )
          ) ,
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(top: 8),
        width: 300,
        height: 60,
        decoration: BoxDecoration(
            color:Colors.black12.withOpacity(0.3) ,
            borderRadius: BorderRadius.circular(10)
        ),
        child: TextFormField(
          controller: phTxt,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Phone Number',
              labelStyle: TextStyle(
                  color: Colors.white60
              ),
              hintText: 'Enter the phone no',
              icon: Icon(Icons. phone,
                color: Colors.white60,
              ),
          ) ,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            LengthLimitingTextInputFormatter(10)
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(top: 8),
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
        margin: EdgeInsets.only(top: 8),
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
      Container(
        margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.only(left: 10),
        width: 300,
        height: 60,
        decoration: BoxDecoration(
            color:Colors.black12.withOpacity(0.3) ,
            borderRadius: BorderRadius.circular(10)
        ),
        child: TextFormField(
          controller: comTxt,
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
              labelText: 'Confirm Password',
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
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(value: isChecked, onChanged: (value) {
                setState(() {
                  isChecked=value!;
                });
              }),
              Container(
                  child: Text('By signing up you agree to our',
                    style: TextStyle(color: Colors.white,fontSize: 15),)
              ),


              Container(
                  child: TextButton(
                      onPressed: () {  },
                      child: Text('conditions',style: TextStyle(color:Colors.lightBlueAccent,
                          fontSize: 15
                      ),
                      )
                  )
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text('and',
                    style: TextStyle(color: Colors.white,fontSize: 15),)
              ),


              Container(
                  child: TextButton(
                      onPressed: () {  },
                      child: Text('privacy policy.',style: TextStyle(color:Colors.lightBlueAccent,
                          fontSize: 15
                      ),
                      )
                  )
              ),
            ],
          ),
        ],
      ),
      SizedBox(height:10),
      SizedBox(
        width: 300,
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white60,
            ),
            onPressed: (){
            },
            child: Text('SignUp',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
              ),
            )
        ),
      ),
            Container(
            child: Text('- Or you can also -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)
        ),
        Container(
          width: 300,
          height: 55,
          color: Colors.white60.withOpacity(0.6),
          child: Row(
            children: [
           Container(
          height: 50,
            width:50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
                image: DecorationImage(fit: BoxFit.fill,
                    image: AssetImage('assets/google.jpg')),
                color: Colors.grey.withOpacity(1)
            ),
          ),
              Container(
                height: 60,
                width: 20,
                color: Colors.white60.withOpacity(0.01),
              ),
              TextButton(onPressed: (){},
                  child:Text('SIGN UP WITH GOOGLE',style: TextStyle(color: Colors.grey.shade700),))
            ],
          ),
        ),
      SizedBox(height:10),
      SizedBox(
        width: 300,
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white60,
            ),
            onPressed: (){
            },
            child: Row(
              children: [
                Icon(Icons.phone,color: Colors.blueGrey,),
                SizedBox(width: 30),
                Text('SIGN UP WITH PHONE NO',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 14

                  ),
                ),
              ],
            ),
        ),
      ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                child: Text('Already have an account?',
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w600),)
        ),
            Container(
            child: TextButton(
              onPressed: () {  },
              child: Text('Login',style: TextStyle(color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)
              ),
            )
        ),
            ]
            )
        ]
    )
    )
    );



  }
}
