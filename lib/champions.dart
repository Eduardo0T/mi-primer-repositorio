import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:qfutbol/inicio.dart';

bool? correcto;
int correctos = 0;
int incorrectos = 0;

void sumaC(){
  correctos++;
}
void sumaI(){
  incorrectos++;
}

vallidacion(BuildContext context){
  if(correcto == true){
    sumaC();
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(title: Text('Verdadero'),
        backgroundColor: Colors.green,
        actions: <Widget>[
        TextButton(onPressed:(){
          Navigator.pop(context);
        } ,
        child:Text('Ok'),)
      ],);
    });
  }else{
    sumaI();
    showDialog(context: context, builder: (BuildContext context){
     return AlertDialog(title: Text('Falso'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Ok'))
        ],);
    });
  }
}

class preguntas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pOne(),
    );
  }
}
class pOne extends StatefulWidget {
  const pOne({Key? key}) : super(key: key);

  @override
  State<pOne> createState() => _pOneState();
}

class _pOneState extends State<pOne> {
  bool dissable = false;
  bool enabledd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.arrow_forward_ios_rounded),
      onPressed: enabledd? (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => pTwo()));
      } : null ,),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InicioQ()));
        },),
        title: Text('Champions League'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff0b0b0b),
                Color(0xff47a69e)
              ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 50),
              child:Text('Cual es el equipo con mas Champions en la historia?',style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20),
              child: TextButton(child: Text('A) Real Madrid',style: TextStyle(fontSize: 15,
              color: Colors.black),),
              onPressed: dissable? null : (){
                correcto = true;
                vallidacion(context);
                setState(() {
                  dissable = !dissable;
                  enabledd = !enabledd;
                });
              },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('B) Ac Milan',style: TextStyle(fontSize: 15,
                color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('C) Fc Bayern',style: TextStyle(fontSize: 15,
                color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('D) Fc Barcelona',style: TextStyle(fontSize: 15,
                color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
            ],
          ),
        ),
      ),
    );
  }
}

class pTwo extends StatefulWidget {
  const pTwo({Key? key}) : super(key: key);

  @override
  State<pTwo> createState() => _pTwoState();
}

class _pTwoState extends State<pTwo> {
  bool dissable = false;
  bool enabledd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.arrow_forward_ios_rounded),
        onPressed: enabledd? (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => pThre()));
        } : null ,),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InicioQ()));
        },),
        title: Text('Champions League'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xff0b0b0b),
                  Color(0xff47a69e)
                ]
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 50),
                child:Text('Maximo goleador de la historia de la Champions?',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('A) Karim Benzema',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('B) Messi',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('C) Cristiano Ronaldo',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = true;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('D) Robert Lewandowski',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
            ],
          ),
        ),
      ),
    );
  }
}

class pThre extends StatefulWidget {
  const pThre({Key? key}) : super(key: key);

  @override
  State<pThre> createState() => _pThreState();
}

class _pThreState extends State<pThre> {
  bool dissable = false;
  bool enabledd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.arrow_forward_ios_rounded),
        onPressed: enabledd? (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => pFour()));
        } : null ,),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InicioQ()));
        },),
        title: Text('Champions League'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xff0b0b0b),
                  Color(0xff47a69e)
                ]
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 50),
                child:Text('Jugador mas veterano en jugar Champions?',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('A) Gianluigi Buffon',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('B) Marco Ballota',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = true;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('C) Francesco Totti',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('D) Alessandro Costacurta',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
            ],
          ),
        ),
      ),
    );
  }
}

class pFour extends StatefulWidget {
  const pFour({Key? key}) : super(key: key);

  @override
  State<pFour> createState() => _pFourState();
}

class _pFourState extends State<pFour> {
  bool dissable = false;
  bool enabledd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.arrow_forward_ios_rounded),
        onPressed: enabledd? (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => pFive()));
        } : null ,),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InicioQ()));
        },),
        title: Text('Champions League'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xff0b0b0b),
                  Color(0xff47a69e)
                ]
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 50),
                child:Text('Cual es el jugador mas veterano en marcar en Champions?',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('A) Gerd Muller',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('B) Cristiano Ronaldo',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('C) Zlatan Ibrahimovic',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('D) Francesco Totti',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = true;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
            ],
          ),
        ),
      ),
    );
  }
}

class pFive extends StatefulWidget {
  const pFive({Key? key}) : super(key: key);

  @override
  State<pFive> createState() => _pFiveState();
}

class _pFiveState extends State<pFive> {
  bool dissable = false;
  bool enabledd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.arrow_forward_ios_rounded),
        onPressed: enabledd? (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Finalizado()));
        } : null ,),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InicioQ()));
        },),
        title: Text('Champions League'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xff0b0b0b),
                  Color(0xff47a69e)
                ]
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 50),
                child:Text('Cual es el Estadio con mas finales de Champions?',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('A) San Siro',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('B) Wembley',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = true;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('C) Santiago Bernabeu',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: TextButton(child: Text('D) Olimpico de Roma',style: TextStyle(fontSize: 15,
                    color: Colors.black),),
                  onPressed: dissable? null : (){
                    correcto = false;
                    vallidacion(context);
                    setState(() {
                      dissable = !dissable;
                      enabledd = !enabledd;
                    });
                  },),),
            ],
          ),
        ),
      ),
    );
  }
}

class Finalizado extends StatelessWidget {

  CollectionReference ref = FirebaseFirestore.instance.collection('champions');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xff0b0b0b),
              Color(0xff47a69e)
            ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Finalizado',style: TextStyle(fontSize: 50,color: Colors.white),),
              Padding(padding: EdgeInsets.only(top: 10),
              child: Text('$correctos'),),
              Padding(padding: EdgeInsets.only(top: 10),
                child: Text('$incorrectos'),),
              Padding(padding: EdgeInsets.only(top: 50),
              child: ElevatedButton(child: Text('Menu Principal',style: TextStyle(color: Colors.white,),),
              style: ElevatedButton.styleFrom(primary: Colors.black),
              onPressed: (){
                ref.add(
                  {
                  'Correctas' : correctos
                  }
                );
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> MenuQ()));
              },),)
            ],
          ),
        ),
      ),
    );
  }
}
