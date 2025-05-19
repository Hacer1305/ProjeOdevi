import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Proje',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Telegram Proje'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

void _incrementCounter() {
  setState(() {
    _counter++;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Telegram", style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: baslik.length,
        itemBuilder: (context, sayac){
          return Container(
            height: 75,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            padding:  EdgeInsets.only(bottom: 0.5),
            child: Container(
              height: 75,
              color: Colors.white,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 5, top: 5, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      color: renkler[sayac%renkler.length],
                    ),
                    alignment: Alignment.center,
                    child: 
                    Text(
                      profil[sayac],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        baslik[sayac],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        sohbet[sayac],
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    time[sayac],
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.edit),
      ),
    );
  }

  List<Color> renkler = [Colors.lightBlue];

  List<String> baslik = [
    "Rüveydaa",
    "Ayşe Sınıf",
    "Abimm",
    "Melike Yılmaz",
    "Aslı Güngör",
    "Annem",
    "İbrahim Gök",
    "Ece Yaren",
    "Yusuf",
    "Şeyma Bilge",
  ];

  List<String> profil = [
    "R",
    "AS",
    "A",
    "MY",
    "AG",
    "A",
    "İG",
    "EY",
    "Y",
    "ŞB",
  ];

  List<String> sohbet = [
    "kanka bügün gelicen mi?",
    "Nasılsın?",
    "Yarın görüşürüz",
    "Fotografları yolladım",
    "Tamamdır, anlaştık.",
    "Evet bencede öyle olmalı",
    "Napıyorsun?",
    "Bügün ki dersler çok zor ya",
    "Hayır öyle değil",
    "Evet çok tatlıı",
  ];

  List<String> time = [
    "11:21",
    "14:01",
    "15:07",
    "17:20",
    "18:41",
    "Dün",
    "Cum",
    "Per",
    "Sal",
    "Pazt",
  ];

}
