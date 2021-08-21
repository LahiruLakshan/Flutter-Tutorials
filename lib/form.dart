import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormTest extends StatefulWidget {
  const FormTest({Key? key}) : super(key: key);

  @override
  _FormTestState createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _name;
  String? _email;
  int? _mobile;
  String? _password;
  String? _confirmPassword;

  Widget _buildStringTextField({String? name, int? length, String? save}) {
    return TextFormField(
      maxLength: length,
      decoration: InputDecoration(hintText: name),
      validator: (String? text) {
        if (name == "Name") {
          return HelperValidator.nameValidation(text!);
        }
        if (name == "Email") {
          return HelperValidator.emailValidation(text!);
        }
        if (name == "Password") {
          return HelperValidator.passwordValidation(text!);
        }
        if (name == "Confirm Password") {
          return HelperValidator.confirmPasswordValidation(text!);
        }
      },
      onSaved: (text) {
        _name = text;
      },
    );
  }

  Widget _buildIntegerTextField({String? name, int? length, int? save}) {
    return TextFormField(
      maxLength: length,
      decoration: InputDecoration(hintText: name),
      validator: (text) {
        if (name == "Mobile No.") {
          return HelperValidator.mobileValidation(text!);
        }
      },
      onSaved: (text) {
        save = text as int?;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              children: [
                _buildStringTextField(name: "Name", length: 30, save: _name),
                _buildStringTextField(name:"Email", length:30, save:_email ),
                _buildIntegerTextField(name:"Mobile No.", length:30, save:_mobile ),
                _buildStringTextField(name:"Password", length:30, save:_email ),
                _buildStringTextField(name:"Confirm Password", length:30, save:_email ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Save"),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        print(_name);
                        print(_email);
                        print(_mobile);
                        print(_password);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HelperValidator {
  static nameValidation(String value) {
    if (value.isEmpty) {
      return "Name cannot be Empty!";
    }
    return null;
  }

  static emailValidation(String value) {
    if (value.isEmpty) {
      return "Email cannot be Empty!";
    }
    return null;
  }

  static mobileValidation(String value) {
    if (value.isEmpty) {
      return "Mobile Number cannot be Empty!";
    }
    return null;
  }

  static passwordValidation(String value) {
    if (value.isEmpty) {
      return "Password cannot be Empty!";
    }
    return null;
  }

  static confirmPasswordValidation(String value) {
    if (value.isEmpty) {
      return "Confirm Password cannot be Empty!";
    }
    return null;
  }
}
