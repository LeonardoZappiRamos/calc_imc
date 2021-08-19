import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<StatefulWidget> {
  int _people = 0;
  bool aperta = false;
  void _countpeople(bool aperta) {
    setState(() {
      aperta == true ? _people++ : _people--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pessas - $_people",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(flex: 1),
              TextButton(
                onPressed: () {
                  aperta = true;
                  _countpeople(aperta);
                },
                child: Text("+1",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    )),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10.0),
                    minimumSize: Size(50, 30),
                    alignment: Alignment.centerLeft),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  aperta = false;
                  _countpeople(aperta);
                },
                child: Text("-1",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    )),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10.0),
                    minimumSize: Size(50, 30),
                    alignment: Alignment.centerLeft),
              ),
              Spacer(flex: 1),
            ],
          ),
          Text("Pode Entrar !!",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 40.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              )),
        ],
      )
    ]);
  }
}
