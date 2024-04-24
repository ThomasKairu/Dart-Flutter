import 'package:bolt/screens/home_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController =  TextEditingController();
  final TextEditingController phoneNumberController =TextEditingController();
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  final TextEditingController confirmPasswordController =TextEditingController();
  bool _isObscured = true;

 Future<void> _register() async {
  var snackbar = SnackBar(content: Text(""));
  if (passwordController.text != confirmPasswordController.text) {
    print('Password do not match');
    return;
  }
snackbar = SnackBar(content: Text("Registration Successful", ));
  if (emailController.text.isEmpty || passwordController.text.isEmpty) {
    print('Email and password are required');
    return;
  }

  try{
    CollectionReference users = FirebaseFirestore.instance.collection('users');
  await users.add({
    'email': emailController.text,
    'password': passwordController.text,
    
  });
  snackbar = const SnackBar(content: Text("Registration Successfull"), backgroundColor: Colors.greenAccent,);
  }
 catch (e) {
    snackbar = SnackBar(content: Text("Failed to Register: $e"), backgroundColor: Colors.red,);
  }

  ScaffoldMessenger.of(context).showSnackBar(snackbar);

  

  
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => const HomePage(),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(controller: firstNameController,
              key: const ValueKey('firstName'),
              decoration: const InputDecoration(
                hintText: "Enter First Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
             TextFormField(controller: lastNameController,
              key: const ValueKey('lastName'),
              decoration: const InputDecoration(
                hintText: "Enter Last Name",
                prefixIcon: Icon(Icons.person_2),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Phone Number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(controller: phoneNumberController,
            validator: (value) {
                return (value == null)
                ? "Please Enter a Valid Phone Number"
                :null;
              },
              key: const ValueKey('phoneNumber'),
              decoration: const InputDecoration(
                hintText: "Enter Phone Number",
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(controller: emailController,
              key: const ValueKey('email'),
              validator: (value) => EmailValidator.validate(value!)
              ?null
              :"Please Enter a Valid Email",
              decoration: const InputDecoration(
                hintText: "Enter Your Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(controller: passwordController,
            validator: (value) {
                return (value == null)
                ? "Please Enter Password"
                :null;
              },
              key: const ValueKey('password'),
              
              obscureText: _isObscured,
              decoration: InputDecoration(
                hintText: "Enter Password",
                prefixIcon: const Icon(Icons.lock),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscured ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(controller: confirmPasswordController,
            validator: (value) {
                return (value == null)
                ? "Password do not match"
                :null;
              },
              key: const ValueKey('confirmPassword'),
              obscureText: _isObscured,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                prefixIcon: const Icon(Icons.lock),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscured ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: FloatingActionButton(
                onPressed: _register,
    
  

                backgroundColor: const Color.fromARGB(255, 63, 228, 110),
                child: const Text(
                  'Register',
                  style: TextStyle(fontFamily: "san serif"),
                ),
              ),
              ),
          ]
            ),
      )
      )
          
        );
      
     
  }
}