import 'package:flutter/material.dart';

class FormTestRuby extends StatefulWidget {
  const FormTestRuby({super.key});

  @override
  State<FormTestRuby> createState() => _FormTestRubyState();
}

class _FormTestRubyState extends State<FormTestRuby> {
  TextEditingController _name = TextEditingController(text: 'Mg Mg');
  TextEditingController _password = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _address = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('App Bar'),
       backgroundColor: Colors.cyan,
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           TextField(
             controller: _name,
             decoration: const InputDecoration(
               hintText: 'Name',
               labelText: 'Name',
               suffixIcon: Icon(Icons.person),
             ),
           ),
           const SizedBox(height: 20,),
            TextField(
             controller: _password,
             obscureText: true,
             decoration: const InputDecoration(
               hintText: 'Password',
               labelText: 'Password',
               suffixIcon: Icon(Icons.lock),
             ),
           ),
           const SizedBox(height: 20,),
           TextField(
             controller: _phone,
             keyboardType: TextInputType.phone,
             decoration: const InputDecoration(
               hintText: 'Phone',
               labelText: 'Phone',
               suffixIcon: Icon(Icons.phone),
             ),
           ),
           const SizedBox(height: 20,),
           TextField(
             controller: _address,
             minLines: 5,
             maxLines: 5,
             keyboardType: TextInputType.multiline,
             decoration: const InputDecoration(
               border: OutlineInputBorder(),
               hintText: 'Address',
               labelText: 'Address',
               suffixIcon: Icon(Icons.phone),
               helperText: 'Please Enter your address completely',
               helperStyle: TextStyle(color: Colors.cyan)
             ),
           ),

           ElevatedButton(onPressed: (){
             setState(() {

             });
           }, child: Text('Save')),
           Text('Name is ${_name.text} Password is ${_password.text}'),
         ],
       ),
     ),
   );
  }
}
