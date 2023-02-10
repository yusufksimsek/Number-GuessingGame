import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/Sayi_Tahmin_Uygulamasi/MainTahmin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            const Text("Tahmin Oyunu", style: TextStyle(
                color: Colors.black54,
              fontSize: 36,
            ),
            ),

           Image.asset("resimler/zar_resim.png"),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: const Text("OYUNA BAŞLA",style: TextStyle(fontSize: 22)),
                onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TahminEkrani()));
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
