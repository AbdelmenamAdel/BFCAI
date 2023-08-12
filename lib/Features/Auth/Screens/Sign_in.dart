import 'package:bfcai_fc_from_figma/Core/Utils/App_String.dart';
import 'package:bfcai_fc_from_figma/Core/Utils/App_color.dart';
import 'package:bfcai_fc_from_figma/Core/Utils/commons.dart';
import 'package:bfcai_fc_from_figma/Features/Auth/Components/customButton.dart';
import 'package:bfcai_fc_from_figma/Features/Auth/Components/customTextField.dart';
import 'package:flutter/material.dart';

import 'whatsapp/home_layout.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool isPassword = true;

  var keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: keyForm,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'E-mail',
                prefix: Icons.email_outlined,
                type: TextInputType.emailAddress,
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your email";
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSave: (value) => _emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'Password',
                isPassword: isPassword,
                controller: _passwordController,
                prefix: Icons.lock_outlined,
                onPressed: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                suffix: isPassword ? Icons.visibility_off : Icons.visibility,
                type: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }
                  return null;
                },
                onSave: (value) => _emailController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        AppStrings.forPass,
                        style: TextStyle(fontSize: 16, color: AppColor.sign),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  text: 'Sign in',
                  width: double.infinity,
                  onPressed: () {
                    if ((keyForm.currentState!.validate())) {
                      print(_emailController.text);
                      print(_passwordController.text);
                    } else {
                      return null;
                    }

                    pushMethod(context, LayoutScreen.id);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
