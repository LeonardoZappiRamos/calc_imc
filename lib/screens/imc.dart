import 'package:flutter/material.dart';

class HomeImc extends StatefulWidget {
  //const  ({ Key? key }) : super(key: key);

  @override
  _HomeImcState createState() => _HomeImcState();
}

class _HomeImcState extends State<StatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  String _infoText = "Bom Dia";
  void _resetButton() {
    setState(() {
      weightController.text = "";
      heightController.text = "";
      _infoText = "Seu Gordo";
    });
  }

  void _calcImc() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Calculadora de IMC"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: _resetButton, icon: Icon(Icons.refresh))
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: (TextFormField(
                      controller: weightController,
                      decoration: const InputDecoration(
                        //labelText: 'weight',
                        hintText: 'Enter your Weight',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your weight';
                        }
                        return null;
                      },
                    ))),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: (TextFormField(
                      controller: heightController,
                      decoration: const InputDecoration(
                        //labelText: 'height',
                        hintText: 'Enter your Height',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your height';
                        }
                        return null;
                      },
                    ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("object");
                      }
                    },
                    child: Container(
                      child: Text('Submit'),
                      width: 150.0,
                      height: 50.0,
                      alignment: AlignmentDirectional.center,
                    ),
                  ),
                ),
                Text(_infoText)
              ],
            ),
          )
        ],
      ),
    );
  }
}
