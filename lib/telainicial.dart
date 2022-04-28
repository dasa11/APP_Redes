import 'package:flutter/material.dart';
import 'package:projeto_redes/qrcode.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controllerqtd = TextEditingController();

  Cadastrar()
  {

  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 44, 88, 1),
        body: SingleChildScrollView(

          child: Stack(

            children: [

              Center(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children:<Widget>[
                    SizedBox(height: 36,),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(17.5,5 ,0 ,0 ),
                          child: Text("Nome do produto",style: TextStyle(
                            color: Colors.white,
                          ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(17.5,5 ,0 ,0 ),
                          child: Text(ticket,style: TextStyle(
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 36,),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10.5,5 ,0 ,0 ),
                        child:  Container(
                          width: 320,
                          child: TextField(
                            controller: _controllerqtd,
                            decoration: InputDecoration(
                              hintText: "Quantidade",
                              hintStyle:
                              TextStyle(color: Colors.white.withOpacity(1), ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                            ),
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.white,
                            ),
                          ),
                        )
                    ),
                    SizedBox(height: 36,),
                    Container(
                      width: 160,
                      height: 40,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(17.5,5 ,0 ,0 ),
                        child: RaisedButton(
                          onPressed: Cadastrar,
                          child: Text(
                            "Armazenar", style: TextStyle(color: Colors.white, fontSize: 15)
                          ),
                          color:  Color.fromRGBO(246 , 121 , 106 , 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 160,
                      height: 40,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(17.5,5 ,0,0 ),
                        child: OutlineButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context)=>ScanQR())
                            );
                          },
                          child: Text(
                            "Cancelar",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),



                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

