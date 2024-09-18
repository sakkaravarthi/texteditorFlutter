import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void move() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondScreen(username:username, password: password))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: "UserName"),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: move,
                child: Text("Login"))

          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  String username;
  String password;

  SecondScreen({required this.username, required this.password});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diplay the Text'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome : $username'),
            SizedBox(height: 20,),
            Text('Password is : $password'),
          ],
        ),
      ),
    );
  }
}
