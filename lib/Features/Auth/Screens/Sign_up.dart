import 'package:flutter/material.dart';

import '../Components/customButton.dart';
import '../Components/customTextField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController departmentController = TextEditingController();

    final TextEditingController passwordController = TextEditingController();

    bool isPassword = true;

    var keyForm = GlobalKey<FormState>();

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
                label: 'Name',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name mustn\'t be empty';
                  }
                  return null;
                },
                onSave: (value) => nameController,
                prefix: Icons.person_2_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'Phone Number',
                controller: phoneController,
                prefix: Icons.phone_outlined,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 11) {
                    return 'Phone Number isn\'t correct';
                  }
                  return null;
                },
                onSave: (value) => phoneController,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'E-mail',
                prefix: Icons.email_outlined,
                type: TextInputType.emailAddress,
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your email";
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSave: (value) => emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'Password',
                isPassword: isPassword,
                controller: passwordController,
                prefix: Icons.lock_outlined,
                onPressed: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                // ignore: dead_code
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
                onSave: (value) => emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'Department',
                controller: departmentController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Department mustn\'t be empty';
                  }
                  return null;
                },
                onSave: (value) => departmentController,
                prefix: Icons.person_2_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  text: 'Sign up',
                  width: double.infinity,
                  onPressed: () {
                    if ((keyForm.currentState!.validate())) {
                      print(emailController.text);
                      print(passwordController.text);
                    } else {
                      return null;
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
