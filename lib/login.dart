import 'package:flutter/material.dart';
import 'colors_theme.dart';
import 'main_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscurePassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    obscurePassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 32, right: 32, top: 52, bottom: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.grain,
                  size: 82,
                  color: ColorsTheme.primary1,
                ),
                SizedBox(height: 22,),
                Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: 36, 
                    fontWeight: FontWeight.bold, 
                    color: ColorsTheme.text1,
                    fontFamily: "Indie_Flower"
                  ),
                ),
                SizedBox(height: 12,),
                Text(
                  "Sign in to continue",
                  style: TextStyle(
                    color: ColorsTheme.text2,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 42,),
                TextFormField(
                  style: TextStyle(
                    color: ColorsTheme.text1,
                    fontSize: 16
                  ),
                  cursorColor: ColorsTheme.primary1,
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsTheme.line2.withOpacity(0.4),
                        width: 1.5
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsTheme.primary1.withOpacity(0.5),
                        width: 1.5
                      )
                    )
                  ),
                ),
                SizedBox(height: 24,),
                TextFormField(
                  obscureText: obscurePassword,
                  style: TextStyle(
                    color: ColorsTheme.text1,
                    fontSize: 16
                  ),
                  cursorColor: ColorsTheme.primary1,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                         obscurePassword = !obscurePassword; 
                        });
                      },
                      icon: Icon( 
                        obscurePassword ?  Icons.visibility : Icons.visibility_off,
                        color: ColorsTheme.line1.withOpacity(0.6),
                        size: 24,
                      ),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsTheme.line2.withOpacity(0.4),
                        width: 1.5
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsTheme.primary1.withOpacity(0.5),
                        width: 1.5
                      )
                    )
                  ),
                ),
                SizedBox(height: 60),
                MaterialButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, 
                      MaterialPageRoute(
                        builder: (context) => MainPage()
                      )
                    );
                  },
                  color: ColorsTheme.primary1,
                  height: 46,
                  minWidth: MediaQuery.of(context).size.width,
                  elevation: 0,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Text(
                    "Sign In"
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Text(
                    "Forgot Password? Let us help",
                    style: TextStyle(
                      color: ColorsTheme.text2,
                      fontSize: 14
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
