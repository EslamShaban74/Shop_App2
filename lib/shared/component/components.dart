import 'package:flutter/material.dart';

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChange,
  Function onTap,
  bool isPassword = false,
  @required Function validate,
  @required String label,
  @required IconData prefix,
  IconData suffix,
  Function suffixPressed,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: type,
    obscureText: isPassword,
    onFieldSubmitted: onSubmit,
    onChanged: onChange,
    onTap: onTap,
    validator: validate,
    decoration: InputDecoration(
      labelText: label,
      suffixIcon: IconButton(
        icon: Icon(suffix),
        onPressed: suffixPressed,
      ),
      prefixIcon: Icon(prefix),
      border: OutlineInputBorder(),
    ),
  );
}

Widget defaultButton({
  @required Function function,
  @required String text,
}) =>
    Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(
          5.0,
        ),
      ),
      child: MaterialButton(
        textColor: Colors.white,
        onPressed: function,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );

Widget defaultTextButton(
        {@required Function function, @required String text}) =>
    TextButton(onPressed: function, child: Text(text.toUpperCase()));

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => widget), (context) {
      return false;
    });
