import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite um valor"
                ),
                //enabled: false,
                //maxLength: 2,
                //maxLengthEnforcement: false,
                /*style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                ),*/
                //obscureText: true,
                onSubmitted: (String texto){
                  print("Valor digitado: " + texto);
                },
                controller: _textEditingController,
              ),
          ),
          ElevatedButton(
              onPressed: (){
                print("Valor digitado: " + _textEditingController.text);
              },
              child: Text("Salvar"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
            ),
          ),
        ],
      ),
    );
  }
}
