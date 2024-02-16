
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {

  static const name = 'login_screen';
  
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            SizedBox(
                  height: 150,
                  width: size.width,
                  child: Image.asset(
                    'assets/images/logo_FB.png',
                    fit: BoxFit.fitWidth,
                  ),
            ),
            const SizedBox(height: 25),
            Container(
                   
                  height: !size.isEmpty
                      ? size.height -
                          200 // 50 de los sizedbox y 150 de la imagen
                      : 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(25))),
                  child: _LoginForm()
                )


          ],
        )
      )
    );
  }
}

class _LoginForm extends ConsumerWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final loginForm = ref.watch(loginFormProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text("OldSkull Producciones", textAlign: TextAlign.center),
          const SizedBox(height: 60),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Contraseña',
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: FilledButton(
              onPressed: (){}, child: Text("Iniciar sesión")),
            
        
          ),
          const Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(child: Text("Crear una cuenta")),
              TextButton(
                child: Text("Registrarme!"),
                onPressed: () {
                  context.push('/signup');
                },
              )
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );

  }
}
