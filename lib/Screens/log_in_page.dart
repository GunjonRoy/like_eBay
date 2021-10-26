import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}
class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff171717),
      appBar: AppBar(
        backgroundColor: Color(0xff171717),
        title: Text(
          "Sign In",
          style: TextStyle(color: Colors.white70),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.cancel_outlined,
            color: Colors.white70,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Hello",
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Text(
              "You can use your email or username, or you can\n continue with your social account",
              style: TextStyle(
                  color: Colors.white70,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 14
              ),
            ),
            Expanded(child: Container(
              //color: Color(0xff171717),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildButtonUser(),
                  SizedBox(height: 10,),
                  _buildGoogleButton(),
                  SizedBox(height: 10,),
                  _buildFacebookButton(),
                  SizedBox(height: 10,),
                  _buildCreateButton()
                ],
              ),
            )
            )
          ],
        ),
      ),
      //bottomSheet: _buildButton(),
    );
  }
  Widget _buildGoogleButton(){
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50)
      ),
      height: 45,
      width: size.width * .95,
      child: Flexible(
        child: SignInButton(
            Buttons.Google ,
            onPressed: (){

            },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
        ),
      ),
    );
  }
  Widget _buildFacebookButton(){
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50)
      ),
      height: 45,
      width: size.width * .95,
      child: Flexible(
        child: SignInButton(
          Buttons.FacebookNew ,
          onPressed: (){

          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
          ),
        ),
      ),
    );
  }

  Widget _buildButtonUser() {
    final size = MediaQuery.of(context).size;
    return Container(
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(100),
//        color: Color(0xff5292fe),
//      ),
      height: 45,
      width: size.width * .95,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff5292fe),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
        ),
        onPressed: (){

        },
        child: Text("Use email or username",style: TextStyle(color: Colors.black),),
      ),
      //#5292fe
    );
  }
  Widget _buildCreateButton() {
    final size = MediaQuery.of(context).size;
    return Container(
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(100),
//        color: Color(0xff5292fe),
//      ),
      height: 45,
      width: size.width *.95,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 1,color: Color(0xff5292fe)),
            primary: Color(0xff171717),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
            )
        ),
        onPressed: (){

        },
        child: Text("Use email or username",style: TextStyle(color: Color(0xff5292fe)),),
      ),
      //#5292fe
    );
  }
}
