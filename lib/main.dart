import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;



    return Scaffold(
     backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
            padding:  EdgeInsets.only(bottom:ekranYuksekligi/20),
    child: SizedBox(
      width: ekranGenisligi/4,
      height: ekranYuksekligi/6,
      child:Image.asset("assets/images/image.png",color: Colors.white,)
    ),
      ),
       const TextField(
        decoration: InputDecoration(
          hintText: "Kullanıcı adı",
          filled: true,
          fillColor: Colors.white,
          border:OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          )
        )
      ),
      const TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Şifre",
          filled: true,
          fillColor: Colors.white,
          border:OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          )
        )
      ),
      ElevatedButton(
        child: Text("GİRİŞ YAP"),
        onPressed: (){
          print("Giriş yapıldı");
        },
      ),
      const Text("Yardım ?"),
          ],
          
        ),
      ),

    );
  }
}
