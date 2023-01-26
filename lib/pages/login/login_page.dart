import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          centerTitle: true,
        ),
        body: LoginView());
  }
}

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32.0),
            Row(
              children: [
                Expanded(child: Container()),
                const Expanded(
                    child: Image(
                        image: AssetImage(
                            'assets/login/flutter-logo-768x768.jpg'))),
                Expanded(child: Container()),
              ],
            ),
            LoginTextField(
              label: "Email",
              textEditingController: emailController,
            ),
            LoginTextField(
              label: "Password",
              textEditingController: passwordController,
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  final String label;
  final TextEditingController textEditingController;

  const LoginTextField(
      {super.key, required this.label, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            border: const OutlineInputBorder(), labelText: label),
      ),
    );
  }
}
