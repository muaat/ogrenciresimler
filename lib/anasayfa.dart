import 'package:flutter/material.dart';
import 'package:ogrenciresimler/12-D.dart';
import 'package:ogrenciresimler/9-A.dart';
import 'package:ogrenciresimler/9-B.dart';
import 'package:ogrenciresimler/kartlar.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  _anasayfaState createState() => _anasayfaState();
}
bool gorun9 = false;
bool gorun10 = false;
bool gorun11 = false;
bool gorun12 = false;
List<String> sinif9A = ["200","201","202","208","209","211","212","216","218","223","224","225","227","228","232","235","238","245","358","394","400","443","444","448","449","450","451","491","500",];
List<String> sinif9B = ["205","207","210","219","220","221","222","226","229","233","236","239","241","244","247","262","263","264","316","321","346","440","441","442","447","452","453","489","494",];
List<String> sinif9D = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif10A = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif10B = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif10C = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif10D = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif11A = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif11B = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif11C = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif11D = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif12A = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",];
List<String> sinif12B = ["9", "16", "17", "18", "22", "26", "33", "34", "36", "37", "42", "44", "48", "49", "50", "56", "68", "69", "150", "170", "203", "251", "260", "269", "272", "274", "382", "388", "427", "428", "464"];
List<String> sinif12C = ["6", "13", "19", "24", "27", "30", "35", "39", "43", "45", "53", "54", "55", "64", "70", "71", "96", "122", "128", "144", "147", "199", "213", "253", "256", "266", "267", "271", "275", "310"];
List<String> sinif12D = ["277", "278", "279", "280", "281", "282", "283", "289", "290", "292", "300", "301", "302", "303", "304", "305", "306", "366", "405", "414", "415", "418", "426", "457", "460", "545"];






List<String> sinif12Disim = ["Alper Alp", "Furkan Erbilgin", "Ahmet Tuna", "Era Yücel", "Yunus Erkan", "Alptekin Eğe", "Berat Toprak", "Enes Doğru", "Kerem Sarı", "İbrahim Özkaracan", "Erdal Enes Kara", "Selim Yıldırım", "Ali Berk Fidan", "Önder Erşahin", "Arif Aktaş", "Batuhan Yıldız", "Ufuk Abdurrahman Atıcı", "Sude Şevval Konukçu", "Görkem Buzdere", "Göksel Bekdemir", "Halil İbrahim Yıldız", "Batıkan Pınar", "Engin Taha Sümer", "Emircan Şahin", "Murat Bayrak", "İmran Yıldırım"];


class _anasayfaState extends State<anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ÖĞRENCİ RESİMLERİ MENÜSÜ",
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      gorun9 = true;
                      gorun10 = false;
                      gorun11 = false;
                      gorun12 = false;
                    });

                  },
                    child: kart("9.SINIFLAR")
                ),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        gorun9 = false;
                        gorun10 = true;
                        gorun11 = false;
                        gorun12 = false;
                      });

                    },child: kart("10.SINIFLAR")),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        gorun9 = false;
                        gorun10 = false;
                        gorun11 = true;
                        gorun12 = false;
                      });

                    },child: kart("11.SINIFLAR")),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        gorun9 = false;
                        gorun10 = false;
                        gorun11 = false;
                        gorun12 = true;
                      });

                    },  child: kart("12.SINIFLAR")),
              ],
            ),
          ),
          sinif9(),
          sinif10(),
          sinif11(),
          sinif12(),


        ],
      ),
    );
  }
}

class sinif9 extends StatelessWidget {
  const sinif9({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: gorun9,
      child: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => A9(sinif9A)));
              },
                child: kart("    9/A   ")
            ),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => B9(sinif9B)));
                },child: kart("    9/B   ")),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    9/D   ")),
          ],
        ),
      ),
    );
  }
}
class sinif10 extends StatelessWidget {
  const sinif10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: gorun10,
      child: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },
                child: kart("    10/A   ")
            ),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    10/B   ")),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    10/C   ")),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    10/D   ")),
          ],
        ),
      ),
    );
  }
}
class sinif11 extends StatelessWidget {
  const sinif11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: gorun11,
      child: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },
                child: kart("    11/A   ")
            ),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    11/B   ")),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    11/C   ")),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    11/D   ")),
          ],
        ),
      ),
    );
  }
}
class sinif12 extends StatelessWidget {
  const sinif12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: gorun12,
      child: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },
                child: kart("    12/A   ")
            ),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    12/B   ")),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    12/C   ")),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D12(sinif12D)));
                },child: kart("    12/D   ")),
          ],
        ),
      ),
    );
  }
}


