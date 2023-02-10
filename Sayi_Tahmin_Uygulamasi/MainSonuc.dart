import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/Sayi_Tahmin_Uygulamasi/MainAnasayfa.dart';


class SonucEkrani extends StatefulWidget {

  late bool sonuc;


  SonucEkrani({required this.sonuc});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

         widget.sonuc ? Image.asset("resimler/mutlu_resim.png") : Image.asset("resimler/uzgun_resim.png"),

            Text(widget.sonuc ? "TEBRİKLER, KAZANDINIZ" : "KAYBETTİNİZ", style: const TextStyle(
                color: Colors.black54,
                fontSize: 32,
              ),
              ),


            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: const Text("TEKRAR DENE",style: TextStyle(fontSize: 22)),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),

          ],
        ),
      ),

    );
  }
}
