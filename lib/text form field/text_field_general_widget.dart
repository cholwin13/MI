import 'package:flutter/material.dart';

class TextFieldGeneralWidget extends StatefulWidget {
  const TextFieldGeneralWidget({super.key});

  @override
  State<TextFieldGeneralWidget> createState() => _TextFieldGeneralWidgetState();
}

class _TextFieldGeneralWidgetState extends State<TextFieldGeneralWidget> {
  // final emailController = TextEditingController();
  // final numberController = TextEditingController();
  // String password = '';
  // bool isPasswordVisible = false;
  final formKey = GlobalKey<FormState>();
  String userName = '';
  String email = '';
  String password = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('TextField'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Form(
            key: formKey,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              padding: EdgeInsets.all(32),
              children: [
                buildUserName(),
                const SizedBox(
                  height: 24,
                ),
                buildEmail(),
                const SizedBox(
                  height: 24,
                ),
                buildPassword(),
                // const SizedBox(
                //   height: 24,
                // ),
                // buildPassword(),
                // const SizedBox(
                //   height: 24,
                // ),
                // buildNumber(),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      final message =
                          'UserName is $userName\nPassword is $password\nEmail is $email';
                      final snackBar = SnackBar(
                          content: Text(
                            message,
                            style: TextStyle(fontSize: 20),
                          ),
                          backgroundColor: Colors.green);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Text('Submit'),
                )
              ],
            ),
          ),
        ),
      );

  Widget buildUserName() => TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'User Name',
        ),
        onSaved: (value) => setState(() => userName = value!),
        validator: (value) {
          if(value!.isEmpty){
            return 'Please write name first';
          }else if(value.length < 4){
            return 'Enter at least 4 characters';
          }else{
            return null;
          }
          // if (value!.length < 4) {
          //   return 'Enter at least 4 characters';
          // } else {
          //   return null;
          // }
        },
      );

  Widget buildEmail() => TextFormField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: 'Email'),
        validator: (value) {
          final pattern =
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
          final regExp = RegExp(pattern);
          if (!regExp.hasMatch(value!)) {
            return 'Enter Email valid';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => email = value!),
        keyboardType: TextInputType.emailAddress,
      );

  Widget buildPassword() => TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(), labelText: 'Password'),
        validator: (value) {
          if (value!.length < 7) {
            return 'password must be at least 7 characters';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => password = value!),
        keyboardType: TextInputType.number,
      );

  // Widget buildEmail() => TextField(
  //       controller: emailController,
  //       keyboardType: TextInputType.emailAddress,
  //       textInputAction: TextInputAction.done,
  //       decoration: InputDecoration(
  //           labelText: 'Email',
  //           hintText: 'hh@gmail.com',
  //           prefixIcon: const Icon(Icons.mail),
  //           suffixIcon: emailController.text.isEmpty
  //           ? Container(width: 0,)
  //           : IconButton(
  //               onPressed: () => emailController.clear(),
  //               icon: const Icon(Icons.close)),
  //           // icon: Icon(Icons.mail),
  //           border: const OutlineInputBorder()),
  //     );

  // Widget buildPassword() => TextField(
  //   onChanged: (value) => setState(() {
  //     // this.password = value;
  //   }),
  //   onSubmitted: (value) => setState(() {
  //     // this.password = value;
  //   }),
  //   // obscureText: isPasswordVisible,
  //   decoration: InputDecoration(
  //     labelText: 'Password',
  //     hintText: 'Your password ...',
  //     errorText: 'Password is wrong',
  //     // suffixIcon: IconButton(
  //     //   onPressed: () {
  //     //     setState(() {
  //     //       // isPasswordVisible = !isPasswordVisible;
  //     //     });
  //     //   },
  //       // icon: isPasswordVisible
  //       //   ? Icon(Icons.visibility_off)
  //       //     : Icon(Icons.visibility),
  //     // ),
  //     border: OutlineInputBorder(),
  //   ),
  // );

  Widget buildNumber() => TextField(
        // controller: numberController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(),
        ),
      );
}
