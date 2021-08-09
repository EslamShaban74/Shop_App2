import 'package:flutter/material.dart';
import 'package:shop_app/layout/shop_layout/cubit/cubit.dart';
import 'package:shop_app/shared/component/components.dart';
import 'package:shop_app/shared/component/constants.dart';

class SettingsScreen extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var model = ShopCubit.get(context).loginModel;
    nameController.text = model.data.name;
    emailController.text = model.data.email;
    phoneController.text = model.data.phone;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          defaultFormField(
              controller: nameController,
              type: TextInputType.name,
              validate: (String value) {
                if (value.isEmpty) {
                  return 'Name can\'t be empty! ';
                }
              },
              label: 'Name',
              prefix: Icons.person),
          SizedBox(
            height: 20.0,
          ),
          defaultFormField(
              controller: emailController,
              type: TextInputType.emailAddress,
              validate: (String value) {
                if (value.isEmpty) {
                  return 'Email can\'t be empty! ';
                }
              },
              label: 'Email Address',
              prefix: Icons.email),
          SizedBox(
            height: 20.0,
          ),
          defaultFormField(
              controller: phoneController,
              type: TextInputType.number,
              validate: (String value) {
                if (value.isEmpty) {
                  return 'Phone number can\'t be empty! ';
                } else if (value.length < 10) {
                  return 'Phone Number is too short';
                }
              },
              label: 'Phone',
              prefix: Icons.phone),
          SizedBox(
            height: 20.0,
          ),
          defaultButton(
              function: () {
                signOut(context);
              },
              text: 'LOGOUT'),
        ],
      ),
    );
  }
}
