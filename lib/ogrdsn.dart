import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ogrenciler extends StatefulWidget {
  ogrenciler(this.sinif, this.sube);

  final sinif;
  final int sube;
  @override
  _ogrencilerState createState() => _ogrencilerState();
}

class _ogrencilerState extends State<ogrenciler> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Text("data"),
          Expanded(
            child: ListView.builder(itemCount: 5,itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.red, child: Text(""),),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class A9text extends StatelessWidget {
  A9text(this.listenumara, this.listeisim);

  final List<String> listenumara;
  final List<String> listeisim;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemCount: listenumara.length,itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(width: 150, height: 150 ,child: Image.asset("resimler/9-A/" + listenumara[index] + ".JPG")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(listeisim.length>index+1?listeisim[index]:"Adı Soyadı"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(listenumara[index]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class B9text extends StatelessWidget {

  B9text(this.listenumara, this.listeisim);

  final List<String> listenumara;
  final List<String> listeisim;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemCount: listenumara.length,itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(width: 150, height: 150 ,child: Image.asset("resimler/9-B/" + listenumara[index] + ".JPG")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(listeisim.length>index+1?listeisim[index]:"Adı Soyadı"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(listenumara[index]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );;
  }
}
