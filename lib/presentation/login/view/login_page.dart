import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginPageWidget(),
    );
  }
}

class LoginPageWidget extends StatelessWidget {
  const LoginPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(flex: 64, child: SizedBox.expand()),
        const Center(
          child: Text(
            "Вход",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
        ),
        const Expanded(flex: 88, child: SizedBox.expand()),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Почта",
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Пароль",
            ),
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => debugPrint("Login"),
              child: const Text("Войти"),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Еще нет аккаунта?"),
            TextButton(
              onPressed: ()  => debugPrint("Создать"),
              child: const Text("Создать"),
            ),
          ],
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () => debugPrint("Не помню пароль"),
          child: const Text("Не помню пароль"),
        ),
        const Expanded(flex: 124, child: SizedBox.expand()),
      ],
    );
  }
}
