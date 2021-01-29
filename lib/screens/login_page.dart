import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height - 100,
            width: size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            right: 100,
            child: Container(
              child: ClipRRect(
                child: Image.asset(
                  "assets/logo-vertical.png",
                  height: 160.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  child: Center(
                    child: RoundedInputField(
                      hintText: "Seu email",
                      icon: Icon(
                        Icons.person,
                        color: Colors.black45,
                      ),
                      onChange: (value) {},
                    ),
                  ),
                ),
                RoundedPasswordField(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.black45,
                  ),
                  hintText: "Sua Senha",
                  onChange: (value) {},
                )
              ],
            ),
          ),
          Positioned(
            top: 520,
            right: 100,
            left: 100,
            child: Container(
              child: RaisedButton(
                child: Text(
                  "Entrar".toUpperCase(),
                  style: TextStyle(fontSize: 14),
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.amber),
                ),
                color: Colors.amber,
                textColor: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final Widget icon;
  final ValueChanged<String> onChange;
  const RoundedPasswordField({
    Key key,
    this.icon,
    this.hintText,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          icon: icon,
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.black45,
          ),
          border: InputBorder.none,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final Widget icon;
  final ValueChanged<String> onChange;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hintText,
          icon: icon,
          border: InputBorder.none,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;
  const TextFieldContainer({
    Key key,
    this.child,
    this.margin,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: margin,
      padding: padding,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color(0xFFE9ECEF),
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
