import 'package:flutter/material.dart';
import 'package:shop_app/modules/register/register_screen.dart';
import 'package:shop_app/shared/component/components.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'login now to browse our hot offers ',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.grey),
            ),
            SizedBox(height: 30.0),
            defaultFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'please enter your email address';
                  }
                },
                label: 'Email Address',
                prefix: Icons.email_outlined),
            SizedBox(height: 15.0),
            defaultFormField(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                validate: (String value) {
                  if(value.isEmpty){
                    return 'password cant be empty!';
                  }
                },
                label: 'Password',
                prefix: Icons.lock_outline,
                suffix: Icons.visibility_outlined,
                suffixPressed: () {}),
            SizedBox(height: 30.0),
            defaultButton(function: () {}, text: 'Login'),
            SizedBox(height: 20.0),
            Row(
              children: [
                Text('don\'t have an account?'),
                defaultTextButton(function: (){
                  navigateTo(context, RegisterScreen());
                }, text: 'register')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
