
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class SignupScreen extends StatelessWidget {

  static const name = 'signup_screen';
  
  const SignupScreen({super.key});

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
                  child: _SignupForm()
                )


          ],
        )
      )
    );
  }
}

class _SignupForm extends ConsumerWidget {
  const _SignupForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
    child: Container(
      height: MediaQuery.of(context).size.height, // Or provide a specific height
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Text("OldSkull Producciones", textAlign: TextAlign.center),
          const SizedBox(height: 60),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nombres',
            ),
          ),
const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Apellidos',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Teléfono',
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
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Confirmar contraseña',
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: FilledButton(
                onPressed: (){}, child: Text("Crear cuenta")),
          
            ),
            const Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(child: Text("Ya tienes una cuenta?")),
                TextButton(
                  child: Text("Iniciar sesión!"),
                  onPressed: () {
                    context.push('/login');
                  },
                )
              ],
            ),
            const Spacer(flex: 1),
          ],
          // Rest of your TextFields and widgets
        
      ),
    ),
  );


  }
}
