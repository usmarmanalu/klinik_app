import 'package:flutter/material.dart';
import 'package:klinik_app/beranda.dart';
import 'package:klinik_app/buat_akun.dart';
import 'package:klinik_app/choice_login.dart';
import 'package:klinik_app/lupa_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            child: Container(
              padding: EdgeInsets.only(top: 100.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Login Admint",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Form(
                      key: _formkey,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Column(
                          children: <Widget>[
                            _usernameTextField(),
                            SizedBox(
                              height: 20,
                            ),
                            _passwordTextField(),
                            SizedBox(
                              height: 40,
                            ),
                            _tombolLogin(),
                            SizedBox(
                              height: 20,
                            ),
                            _lupaPassword(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _usernameCtrl,
      autofocus: true,
      maxLines: null,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return 'mohon di isi';
        }
        return null;
      },
    );
  }

  Widget _passwordTextField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(labelText: "Password"),
      controller: _passwordCtrl,
      keyboardType: TextInputType.text,
    );
  }

  Widget _tombolLogin() {
    return Container(
      height: 42.0,
      width: MediaQuery.of(context).size.width / 1.3,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: GestureDetector(
        // style: ButtonStyle(),
        onTap: () {
          if (_formkey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Beranda(),
              ),
            );
          }
        },
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }

  _lupaPassword() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuatAkun(),
                      ));
                },
                child: Text(
                  "Buat Akun",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LupaPassword(),
                    ),
                  );
                },
                child: Text(
                  "Lupa Password?",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginChoice(),
                ),
              );
            },
            child: Icon(
              Icons.logout,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
