import 'package:admin/screens/Verification%20Success/verification_success.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:admin/size_config.dart';

class DocumentBody extends StatefulWidget {
  String GSTimg,ACTimg,PANimg,AADHARimg,docId;
 DocumentBody({
    @required this.AADHARimg,
   @required this.ACTimg,
   @required this.GSTimg,
   @required this.PANimg,
   @required this.docId,
});

  @override
  _DocumentBodyState createState() => _DocumentBodyState();
}

class _DocumentBodyState extends State<DocumentBody> {
  bool doc1 = false;
  bool doc2 = false;
  bool doc3 = false;
  bool doc4 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
        vertical: getProportionateScreenHeight(40),
      ),
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: getProportionateScreenHeight(350),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(getProportionateScreenWidth(15)),
                        topRight:
                            Radius.circular(getProportionateScreenWidth(15)),
                        bottomLeft:
                            Radius.circular(getProportionateScreenWidth(15)),
                        bottomRight:
                            Radius.circular(getProportionateScreenWidth(15)),
                      ),
                    ),
                    elevation: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(getProportionateScreenWidth(15)),
                        topRight:
                            Radius.circular(getProportionateScreenWidth(15)),
                        bottomLeft:
                            Radius.circular(getProportionateScreenWidth(15)),
                        bottomRight:
                            Radius.circular(getProportionateScreenWidth(15)),
                      ),
                      child: Image.network(
                        widget.GSTimg,
                        height: getProportionateScreenHeight(200),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SwitchVerification(
                      context, 'GST Certificate', 'GST Certificate details',
                      (newValue) {
                    setState(() {
                      doc1 = newValue;
                    });
                  }, doc1),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: getProportionateScreenHeight(350),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Image.network(
                            widget.ACTimg,
                            height: getProportionateScreenHeight(200),
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SwitchVerification(context, 'Gomasta', 'Gomasta details',
                          (newValue) {
                        setState(() {
                          doc2 = newValue;
                        });
                      }, doc2),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(15),
          ),
          Container(
            width: double.infinity,
            height: getProportionateScreenHeight(350),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Image.network(
                            widget.PANimg,
                            height: getProportionateScreenHeight(200),
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SwitchVerification(context, 'PAN Card', 'PAN details',
                          (newValue) {
                        setState(() {
                          doc3 = newValue;
                        });
                      }, doc3),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(15),
          ),
          Container(
            width: double.infinity,
            height: getProportionateScreenHeight(350),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Image.network(
                            widget.AADHARimg,
                            height: getProportionateScreenHeight(200),
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SwitchVerification(
                          context,
                          'Aadhar Card / Shop Electric Bill',
                          'details', (newValue) {
                        setState(() {
                          doc4 = newValue;
                        });
                      }, doc4),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(15),
          ),
          ElevatedButton(
            onPressed: doc1 == true && doc2 == true && doc3 == true && doc4 ==true
                ? () async {
              print(widget.docId);
                   await FirebaseFirestore.instance.collection('shop').doc(widget.docId).update({
                     'shopStatus': 'Verified',
                   });
                   Navigator.of(context)
                       .pushNamed(VerificationSuccess.routeName);
                  }
                : null,
            child: Text('Verify Shop'),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

SwitchListTile SwitchVerification(BuildContext context, String title,
    String detail, Function handler, bool value) {
  return SwitchListTile(
    activeColor: Colors.orange,
    title: Text(title),
    subtitle: Text(detail),
    value: value,
    onChanged: handler,
  );
}
