import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/Sayi_Tahmin_Uygulamasi/MainSonuc.dart';


class TahminEkrani extends StatefulWidget {
  const TahminEkrani({Key? key}) : super(key: key);

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {

  var tfTahmin = TextEditingController();
  int rastgeleSayi = 0;
  int KalanHak = 5;
  String yonlendirme = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rastgeleSayi = Random().nextInt(51);  // 0-50
    print("Rastgele Sayı: $rastgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text("Kalan Hak : $KalanHak", style: const TextStyle(
              color: Colors.pink,
              fontSize: 30,
            ),
            ),

            Text("Yardım : $yonlendirme", style: const TextStyle(
              color: Colors.black54,
              fontSize: 24,
            ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: const Text("TAHMİN ET",style: TextStyle(fontSize: 22,color: Colors.pink)),
                onPressed: (){

                  setState(() {
                    KalanHak--;
                  });

                  int tahmin = int.parse(tfTahmin.text);

                  if(tahmin == rastgeleSayi){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: true,)));
                 return;
                  }

                  if(tahmin > rastgeleSayi){
                    setState(() {
                      yonlendirme = "Tahmini azalt";
                    });
                  }

                  if(tahmin < rastgeleSayi){
                    setState(() {
                      yonlendirme = "Tahmini arttır";
                    });
                  }

                  if(KalanHak == 0){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: false,)));
                  }

                  tfTahmin.text = "";

                },
              ),
            ),

          ],
        ),
      ),

    );
  }
}

