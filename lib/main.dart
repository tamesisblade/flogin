import 'package:flutter/material.dart';
void main() => runApp(MiApp());
class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
//stateFul
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("App de tamesis"),),
      body: Container(
        child: cuerpo(),
      ),
    );
  }
}


Widget cuerpo(){
  return  Container(
    decoration: BoxDecoration(
      image: DecorationImage(image:NetworkImage('https://i.pinimg.com/originals/4a/2d/5d/4a2d5d609e75b72c21b14550b45c8255.jpg'),
      fit: BoxFit.cover)
    ),
    child: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        nombre(),
        txtusuario(),
        txtpass(),
        SizedBox(height: 10,),
        botonEntrar(),
      ],
    )),
  );
}

Widget nombre(){
  return Text("Login",style: TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.bold),);
}
Widget txtusuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: TextField(
      obscureText: true,
        decoration: InputDecoration(
          hintText: "Usuario",
          fillColor: Colors.white,
          filled:true,
        ),
    ),
  );
}

Widget txtpass(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

Widget botonEntrar(){
  void _changeStatus(){
    print("hola mundoooo");
  }
  return
    ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.black87,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: _changeStatus,
        child: const Text('Ingresar'),
    );
}

