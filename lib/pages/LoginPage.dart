import 'package:flutter/material.dart';
import 'Index.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //TextEditingController _ctrl1 = TextEditingController();
  //TextEditingController _ctrl2 = TextEditingController();
  String _s1 = '', _s2 = '';
  String _s3 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogos Educativos"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Container(
            padding: EdgeInsets.fromLTRB(10,0,10,0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Login',
                hintText: 'Digite o login'
              ),

              onChanged: (String value){
                setState(() {
                  _s1 = value;
                });
              },
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite a senha',
              ),
              obscureText: true,
              onChanged: (String value){
                setState(() {
                  _s2 = value;
                });
              },
            ),
          ),

          ButtonTheme(
            minWidth: 200,
            height: 50,
            child: RaisedButton(
              child: Text('Login'),
              onPressed: (){
                if( _s1 != "" && _s2 != ""){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Index()
                    ),
                  );
                }else{
                  setState(() {
                    _s3 = "Preencha os dados";
                  });
                }
              }
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Text('$_s3'),
          ),

        ],
      ),
    );
  }
}
