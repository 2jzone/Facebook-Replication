import '../constants.dart';
import '../widgets/customfont.dart';
import '../widgets/custom_inkwell_button.dart';
import '../widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_dialogs.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController mobilenumberController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  bool _isPasswordObscure = true;

  List<Map<String, String>> registeredUsers = [];

  void register() {
    String firstname = firstnameController.text.trim();
    String lastname = lastnameController.text.trim();
    String mobileNumber = mobilenumberController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmpasswordController.text.trim();

    if (firstname.isEmpty ||
        lastname.isEmpty ||
        mobileNumber.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      customDialog(context,
          title: "Error", content: "All fields are required to continue");
      return;
    }

    if (mobileNumber.length != 11 || !RegExp(r'^\d+$').hasMatch(mobileNumber)) {
      customDialog(context,
          title: "Error", content: "The mobile number must be 11 digits");
      return;
    }

    RegExp passwordRegex = RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@\$!%*?&])[A-Za-z\d@\$!%*?&]{8,}$');
    if (!passwordRegex.hasMatch(password)) {
      customDialog(context,
          title: "Error",
          content:
              "Passwords should be 8 characters, a mixture of letter and numbers consisting of at least one special character with Uppercase and Lowercase letters.");
      return;
    }

    if (password != confirmPassword) {
      customDialog(context, title: "Error", content: "Passwords do not match");
      return;
    }

    registeredUsers.add({
      'firstname': firstname,
      'lastname': lastname,
      'mobileNumber': mobileNumber,
      'password': password,
    });

    customDialog(context, title: "Success", content: "Registration successful");
    Navigator.pushReplacementNamed(context, '/login');

    Navigator.pushReplacementNamed(
      context, '/login',
      arguments: registeredUsers, // Pass the list as arguments
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          padding: EdgeInsets.fromLTRB(
            ScreenUtil().setWidth(25),
            ScreenUtil().setHeight(40),
            ScreenUtil().setWidth(25),
            ScreenUtil().setHeight(10),
          ),
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              CustomFont(
                text: 'Register Here',
                fontSize: ScreenUtil().setSp(50),
                fontWeight: FontWeight.bold,
                color: FB_DARK_PRIMARY,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              CustomTextFormField(
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                onSaved: null,
                fontColor: null,
                hintText: 'First name',
                validator: (value) => null,
                hintTextSize: ScreenUtil().setSp(15),
                fontSize: ScreenUtil().setSp(15),
                controller: firstnameController,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              CustomTextFormField(
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                onSaved: null,
                fontColor: null,
                hintText: 'Last name',
                validator: (value) => null,
                hintTextSize: ScreenUtil().setSp(15),
                fontSize: ScreenUtil().setSp(15),
                controller: lastnameController,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              CustomTextFormField(
                maxLength: 11,
                keyboardType: TextInputType.number,
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                onSaved: null,
                fontColor: null,
                hintText: 'Mobile Num',
                validator: (value) => null,
                hintTextSize: ScreenUtil().setSp(15),
                fontSize: ScreenUtil().setSp(15),
                controller: mobilenumberController,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              CustomTextFormField(
                isObscure: _isPasswordObscure,
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                onSaved: null,
                fontColor: null,
                hintText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordObscure
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordObscure = !_isPasswordObscure;
                    });
                  },
                ),
                validator: (value) => null,
                hintTextSize: ScreenUtil().setSp(15),
                fontSize: ScreenUtil().setSp(15),
                controller: passwordController,
                // Controlled by state
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Text(
                'Password should be 8 characters, a mixture of letter and numbers consisting of at least one special character with Uppercase and Lowercase letters.',
                style: TextStyle(
                    color: Colors.black45, fontSize: ScreenUtil().setSp(10)),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              CustomTextFormField(
                isObscure: _isPasswordObscure,
                hintText: 'Confirm Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordObscure
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordObscure = !_isPasswordObscure;
                    });
                  },
                ),
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                onSaved: null,
                fontColor: null,
                validator: (value) => null,
                hintTextSize: ScreenUtil().setSp(15),
                fontSize: ScreenUtil().setSp(15),
                controller: confirmpasswordController,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You have an account? ',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: ScreenUtil().setSp(15))),
                  GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(context, '/login'),
                    child: Text(
                      'Login here',
                      style: TextStyle(
                        color: FB_DARK_PRIMARY,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              CustomInkwellButton(
                onTap: () => register(),
                height: ScreenUtil().setHeight(45),
                width: ScreenUtil().screenWidth,
                fontSize: ScreenUtil().setSp(15),
                fontWeight: FontWeight.bold,
                buttonName: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
