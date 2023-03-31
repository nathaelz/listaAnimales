import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Lista',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> itemList = [
    {
      'name': 'Perro',
      'image': 'https://definicion.de/wp-content/uploads/2013/03/perro-1.jpg',
      'selected': false,
    },
    {
      'name': 'Gato',
      'image': 'https://static.eldiario.es/clip/ab74aa95-3656-424c-8ca1-dce590aabb97_16-9-discover-aspect-ratio_default_0.jpg',
      'selected': true,
    },
    {
      'name': 'Orca',
      'image': 'https://t1.ea.ltmcdn.com/es/razas/4/5/4/orca-comun-o-ballena-asesina_454_0_orig.jpg',
      'selected': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Lista- Nathalie Elias'),
      ),
      body: Center(
        child: ListView.builder(
          
          itemCount: itemList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                
                children: <Widget>[
                  Checkbox(
                    value: itemList[index]['selected'],
                    onChanged: (newValue) {
                      setState(() {
                        itemList[index]['selected'] = newValue;
                      });
                    },
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    child: Image.network(itemList[index]['image']),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Text(
                      itemList[index]['name'],
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
