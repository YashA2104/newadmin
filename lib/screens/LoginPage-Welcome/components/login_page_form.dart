import 'package:admin/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../components/form_detail.dart';
import '../../../size_config.dart';
import '../../Login Success/login_success.dart';

class LoginPageForm extends StatelessWidget {

  String email,pass;

final TextEditingController nameController = new TextEditingController();
final TextEditingController passController = new TextEditingController();
  String dID;

  void getValues(){
    email = nameController.text.toString();
    pass = passController.text.toString();
  }


  Future loginAsAdmin(context) async {
    getValues();
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass);
    DocumentSnapshot ds = await FirebaseFirestore.instance.collection('admin').doc(FirebaseAuth.instance.currentUser.uid).get();
    if(ds.get('isAdmin') == true){
      Fluttertoast.showToast(msg: 'You Have Successfully Logged in as Admin!!');
      Navigator.pushNamed(context, LoginSuccess.routeName);
    }
    else{
      Fluttertoast.showToast(msg: 'Details are incorrect!!');
    }
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: Column(
          children: [
            FormDetails(
              controller: nameController,
              labelText: 'Enter Email',
              hint: 'Enter your email',
              icon: Icons.email_outlined,
            ),
            SizedBox(height: 30),
            FormDetails(
                controller: passController,
                labelText: 'Password',
                hint: 'Enter your password',
                icon: Icons.lock),
            SizedBox(height: 30),
           // CheckBoxLogin(text: 'Remember me'),
            SizedBox(height: 30),
            Container(
              height: 50,
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {
                  loginAsAdmin(context);
                },
                color: kSecondaryColor,
                child: Text('Continue',
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: kPrimaryColor,
                    )),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

