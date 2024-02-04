import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final holderOne = FocusNode();
  final holderTwo = FocusNode();

  @override
  void initState() {
    holderOne.addListener(() {
      setState(() {});
    });

    holderTwo.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomCenter,
              colors: [Color(0xff323A99), Color(0xffF98BFC)]),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 40,
              child: getImageContainer(),
            ),
            getLoginContent(),
          ],
        ),
      ),
    );
  }

  Widget getLoginContent() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                  ),
                  getTopTextForLoginContext(),
                  SizedBox(
                    height: 30,
                  ),
                  getEmailTextField(),
                  SizedBox(
                    height: 30,
                  ),
                  getPasswordTextField(),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('sign in'),
                    style: Theme.of(context).elevatedButtonTheme.style,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have an account? /',
                        style:
                            TextStyle(color: Colors.grey, fontFamily: 'winter'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'winter'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getImageContainer() {
    return Column(
      children: [
        Expanded(
          child: Image(
            image: AssetImage('images/rocket.png'),
          ),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }

  Widget getTopTextForLoginContext() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Sign in',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontFamily: 'winter'),
        ),
        SizedBox(
          width: 10,
        ),
        Image(
          image: AssetImage('images/minilogo.png'),
        ),
      ],
    );
  }

  Widget getEmailTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        focusNode: holderOne,
        style: TextStyle(
          color: Color(0xffF35383),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          labelText: 'Email',
          labelStyle: TextStyle(
              color: holderOne.hasFocus ? Color(0xffF35383) : Colors.white),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffF35383), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xffC5C5C5),
              width: 2,
            ),
          ),
        ),
        cursorColor: Color(0xffF35383),
      ),
    );
  }

  Widget getPasswordTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        focusNode: holderTwo,
        style: TextStyle(
          color: Color(0xffF35383),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          labelText: 'Password',
          labelStyle: TextStyle(
            color: holderTwo.hasFocus ? Color(0xffF35383) : Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffF35383), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xffC5C5C5),
              width: 2,
            ),
          ),
        ),
        cursorColor: Color(0xffF35383),
      ),
    );
  }

  @override
  void dispose() {
    holderOne.dispose();
    super.dispose();
  }
}
