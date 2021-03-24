import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;
  String _resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox test"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              title: Text("Comida brasileira"),
              subtitle: Text("A melhor comida do mundo"),
              activeColor: Colors.green,
              selected: true,
              secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
              onChanged: (bool resultado) {
                setState(() {
                  _comidaBrasileira = resultado;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexina"),
              subtitle: Text("A segunda melhor comida do mundo"),
              activeColor: Colors.red,
              selected: true,
              secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (bool resultado) {
                setState(() {
                  _comidaMexicana = resultado;
                });
              },
            ),
            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                if (_comidaBrasileira == true && _comidaMexicana == true) {
                  setState(() {
                    _resultado = "As duas comidas são as melhores";
                  });
                } else if (_comidaBrasileira == true &&
                    _comidaMexicana == false) {
                  setState(() {
                    _resultado = "Só a comida brasileira é boa";
                  });
                } else if (_comidaBrasileira == false &&
                    _comidaMexicana == true) {
                  setState(() {
                    _resultado = "Só a comida mexicana é boa";
                  });
                } else {
                  setState(() {
                    _resultado = "Nenhuma comida é boa";
                  });
                }
              },
            ),
            Text(_resultado)
          ],
        ),
      ),
    );
  }
}
