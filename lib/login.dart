// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Color appBarColor = const Color.fromARGB(255, 53, 53, 53);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLogo(),
            _buildWelcomeText(),
            _buildFullNameTextField(),
            _buildUsernameTextField(),
            _buildEmailTextField(),
            _buildPasswordTextField(),
            _buildCodeVerificationTextField(),
            _buildLoginButton(),
            _buildFacebookGoogleButtons(),
            _buildBottomText(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/logo.png'),
            height: 120,
          ),
          Text("Belajar Coding lebih mudah dan praktis"),
        ],
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 30),
      child: const Text(
        "Masukkan data anda",
        style: TextStyle(fontWeight: FontWeight.w800),
      ),
    );
  }

  Widget _buildFullNameTextField() {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 7, left: 7, right: 7),
      child: const TextField(
        decoration: InputDecoration(
          labelText: "Nama Lengkap",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Widget _buildUsernameTextField() {
    return Container(
      margin: const EdgeInsets.all(4),
      child: const TextField(
        decoration: InputDecoration(
          labelText: "Nama Pengguna",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return Container(
      margin: const EdgeInsets.all(4),
      child: const TextField(
        decoration: InputDecoration(
          labelText: "Alamat Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return Container(
      margin: const EdgeInsets.all(4),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Kata Sandi",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Widget _buildCodeVerificationTextField() {
    return Container(
      margin: const EdgeInsets.all(4),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: "Kode Verifikasi",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text("Lupa Password?"),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
          child: SizedBox(
            height: 40,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text("LOGIN SEKARANG"
                ,style: TextStyle(fontWeight: FontWeight.w900),)),
          ),
        ))
      ],
    );
  }

  Widget _buildFacebookGoogleButtons() {
    return Container(
      margin: const EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text("Facebook"),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Google",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomText() {
    return Container(
      padding: const EdgeInsets.only(top: 10),
        child: const Text(
            "Dengan masuk ke KODINGKU, kamu menyetujui \n Ketentuan dan Kebijakan Privasi kami.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10), 
            ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}
