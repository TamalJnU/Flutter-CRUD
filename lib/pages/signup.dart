import 'dart:convert';

import 'package:first_flutter_application/pages/services/service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/postModel.dart';

class Signup extends StatefulWidget {
  // const Signup({super.key, required this.title});
  // final String title;
  //const Signup({super.key});

  final PostModel? postmodel;
  Signup({this.postmodel});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Form"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: widget.postmodel == null ? 
        SignupForm() : 
        SignupForm(postmodel2: widget.postmodel,),
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  //const SignupForm({super.key});

  final PostModel? postmodel2;
  SignupForm({this.postmodel2});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _passKey = GlobalKey<FormFieldState>();

  String _name = '';
  String _email = '';
  int _age = -1;
  String _maritalStatus = 'single';
  int _selectGender = 0;
  String _password = '';
  bool _termsChecked = true;
  int _id = 0;
  

  void _createUser() async {

  }

  List<DropdownMenuItem<int>> genderList = [];

  void loadGenderList() {
    genderList = [];
    genderList.add(
      DropdownMenuItem(
        child: Text("Male"),
        value: 0,
      ),
    );
    genderList.add(
      DropdownMenuItem(
        child: Text("Female"),
        value: 1,
      ),
    );
    genderList.add(
      DropdownMenuItem(
        child: Text("Others"),
        value: 2,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    if(widget.postmodel2 != null){
    _name = widget.postmodel2!.title.toString();
    _email = widget.postmodel2!.body.toString();
    _id = widget.postmodel2!.id!;
    }
  }

  @override
  Widget build(BuildContext context) {
    loadGenderList();
    return Form(
      child: ListView(
        children: getFormWidget(),
      ),
    );
  }

  List<Widget> getFormWidget() {
    List<Widget> formWidget = [];

    formWidget.add(
      TextFormField(
        initialValue: _name,
        decoration: InputDecoration(
          labelText: 'Enter Name',
          hintText: 'Name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a name!';
          } else {
            return null;
          }
        },
        onChanged: (text) {  
          _name = text;  
        },
        // onSaved: (value) {
        //   setState(() {
        //     _name = value.toString();
        //   });
        // },
      ),
    );

    validateEmail(String? value) {
      if (value!.isEmpty) {
        return 'Please enter email';
      }
      Pattern pattern =
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
      RegExp regex = RegExp(pattern.toString());
      if (!regex.hasMatch(value.toString())) {
        return 'Enter valid email';
      } else {
        return null;
      }
    }

    formWidget.add(
      TextFormField(
        initialValue: _email,
        decoration: InputDecoration(
          labelText: 'Enter Email',
          hintText: 'Email',
        ),
        keyboardType: TextInputType.emailAddress,
        validator: validateEmail,
        onChanged: (text) {  
          _email = text;  
        },
        // onSaved: (value) {
        //   setState(() {
        //     _email = value.toString();
        //   });
        // },
      ),
    );

    formWidget.add(
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Enter Age',
          hintText: 'Age',
        ),
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your age!';
          } else {
            return null;
          }
        },
        onChanged: (text) {  
          _age = int.parse(text.toString()); 
        },
        // onSaved: (value) {
        //   setState(() {
        //     _age = int.parse(value.toString());
        //   });
        // },
      ),
    );

    formWidget.add(
      DropdownButton(
        hint: Text('Select Gender'),
        items: genderList,
        value: _selectGender,
        onChanged: (value) {
          setState(() {
            _selectGender = int.parse(value.toString());
          });
        },
        isExpanded: true,
      ),
    );

    formWidget.add(
      Column(
        children: <Widget>[
          RadioListTile<String>(
            title: Text('Single'),
            value: 'single',
            groupValue: _maritalStatus,
            onChanged: (value) {
              setState(() {
                _maritalStatus = value.toString();
              });
            },
          ),
          RadioListTile<String>(
            title: Text('Married'),
            value: 'married',
            groupValue: _maritalStatus,
            onChanged: (value) {
              setState(() {
                _maritalStatus = value.toString();
              });
            },
          ),
        ],
      ),
    );

    formWidget.add(
      TextFormField(
        key: _passKey,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Enter Password',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter password';
          } else if (value.length < 8) {
            return 'Password should be at least 8 characters';
          } else {
            return null;
          }
        },
      ),
    );

    formWidget.add(
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Confirm Password',
          labelText: 'Enter Confirm Password',
        ),
        validator: (confirmPassword) {
          if (confirmPassword != null && confirmPassword.isEmpty) {
            return 'Please enter confirm password';
          }
          var password = _passKey.currentState?.value;
          if (confirmPassword != null &&
              confirmPassword.compareTo(password) != 0) {
            return 'Password mismatch';
          } else {
            return null;
          }
        },
        onChanged: (text) {  
          _password = text;  
        },
        // onSaved: (value) {
        //   setState(() {
        //     _password = value.toString();
        //   });
        // },
      ),
    );

    formWidget.add(
      CheckboxListTile(
        value: _termsChecked,
        onChanged: (value) {
          setState(() {
            _termsChecked = value.toString().toLowerCase() == 'true';
          });
        },
        subtitle: !_termsChecked
            ? Text(
                'Required',
                style: TextStyle(color: Colors.red, fontSize: 12.0),
              )
            : null,
        title: const Text(
          'I agree to the terms and condition',
        ),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );

    Future<void> onPressedSubmit() async {
      // if (_formKey.currentState!.validate() && _termsChecked) {
      //   _formKey.currentState?.save();

      // Product product = new Product();

      // product.name = _name;
      // product.email = _email;
      // product.price = _age.toString();
      // product.quantity = _password;

      // (await ProductApiService().createProduct(product));
      // print("Delete Call!");

      print("Name " + _name);
      print("Email " + _email);
      print("Age " + _age.toString());
      switch (_selectGender) {
        case 0:
          print("Gender Male");
          break;
        case 1:
          print("Gender Female");
          break;
        case 3:
          print("Gender Others");
          break;
      }
      print("Marital Status " + _maritalStatus);
      print("Password " + _password);
      print("Termschecked " + _termsChecked.toString());
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Form Submitted')));


      PostModel pm = new PostModel();
      pm.title = _name;
      pm.body = _email;
      if(widget.postmodel2 != null){
        pm.id = _id;
      }

      
      (await UserService().createPost(pm));


      // final String url = 'http://192.168.20.38:8080/api/posts';
      // var reqBody = {
      //   "title" : _name,
      //   "body" : _email,
      // };

      // var response = await http.post(Uri.parse(url),
      //   headers: {"Content-Type": "application/json"},
      //   body: jsonEncode(reqBody)
      // );

      // var jsonResponse = jsonDecode(response.body);
      // if(jsonResponse['status']) {
      //   print('Data Submitted');
      // } else {
      //   print('Something went wrong');
      // }


      // Navigator.pushAndRemoveUntil<dynamic>(
      //   context,
      //   MaterialPageRoute<dynamic>(
      //     builder: (BuildContext context) => Home(),
      //   ),
      //   (route) => false,
      // );
      // }
    }

    formWidget.add(ElevatedButton(
      onPressed: () {
        onPressedSubmit();
        Navigator.pushNamedAndRemoveUntil(context, "/userList", (route) => false);
      }, 
      child: widget.postmodel2!=null? Text('Update'): Text('Sign Up'),
      ),
    );

    formWidget.add(ElevatedButton(
      child: const Text('Login'), onPressed: (){

        Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);

      //   Navigator.pushAndRemoveUntil<dynamic>(context,
      //   MaterialPageRoute<dynamic>(
      //     builder: (BuildContext context) =>Home(),
      //   ),
      //       (route) =>false,
      // );
      }
    ),
    );

    return formWidget;
  }
}
