import 'package:flutter/material.dart';

class NumbersExercises extends StatefulWidget {
  @override
  _NumbersExercisesState createState() => _NumbersExercisesState();
}

class _NumbersExercisesState extends State<NumbersExercises> {
  String _s1 = '';
  String _s2 = '';
  String _s3 = '';
  String _answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicios'),
      ),

      resizeToAvoidBottomInset: false,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text('Quantas maças tem na figura?',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),



          Row(
            children: [
              Image(
                image:AssetImage('assets/apple.png'),
              ),
              SizedBox(
                width: 40,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (String value){
                      setState(() {
                        _s1 = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text('Quantos dedos tem na figura?',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),


          Row(
            children: [
              Image(
                image:AssetImage('assets/fingers.png'),
              ),
              SizedBox(
                width: 40,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (String value){
                      setState(() {
                        _s2 = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text('Quantos dados tem na figura?',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),


          Row(
            children: [
              Image(
                image:AssetImage('assets/1.png'),
              ),
              SizedBox(
                width: 40,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (String value){
                      setState(() {
                        _s3 = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),

          ButtonTheme(
            minWidth: 200,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 20.0),
              child: RaisedButton(
                  child: Text('Conferir',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    if ( _s1 == '3' && _s2 == '5' && _s3 == '8' ){
                      setState(() {
                        _answer = "Resposta correta";
                      });
                    }else{
                      setState(() {
                        _answer = "Resposta errada";
                      });
                    }
                  }
              ),
            ),
          ),

          Container(
            child: Center(child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('$_answer'),
            )),
          ),

        ],

      ),
    );
  }
}
