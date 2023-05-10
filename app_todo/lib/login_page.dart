import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(50, 47, 94, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (text) {
                  email = text;
                },
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white, fontSize: 20,),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Color.fromRGBO(223, 198, 215, 1),),
                ),
                ),
              const Divider(),
              TextFormField(
                onChanged: (text) {
                  password = text;
                },
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: const TextStyle(color: Colors.white, fontSize: 20,),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Color.fromRGBO(223, 198, 215, 1),),
                ),
                ),
              const Divider(),  
              ButtonTheme(
                  child: ElevatedButton(
                    onPressed: () {
                      if (email == 'lucas21fonseca@gmail.com' && 
                      password == '123'){
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('login invalido');
                      };
                    },
                     child: const Text(
                      'Entrar',
                      style: TextStyle(color: Color.fromRGBO(223, 198, 215, 1)),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}