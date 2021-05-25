import 'package:admin/screens/Document%20Verrification/document_verification.dart';

import 'package:admin/screens/Home%20Page/components/shop_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:admin/size_config.dart';

import '../../Document Verrification/document_verification.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Center(
      child: ListView(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          TextFields(text1: 'Search', text2: 'Search Shops Here'),
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: StreamBuilder <QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('shop').snapshots(),
              builder: (context , snapshots){
                final List<DocumentSnapshot> documents = snapshots.data.docs;
                return ListView(
                  children: documents.map((doc) =>
                      GestureDetector(
                        onTap: () async {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DocumentVerification(PANimg: doc['PAN Card'], GSTimg: doc['GST Certificate'], ACTimg: doc['Act Certificate'], AADHARimg: doc['Aadhar Card'],docId: doc['docID'],)));
                        },
                        child: ShopInfo(
                          imageText: '',
                          shopName: doc['shopName'],
                          shopAddress: doc['shopAddress'],
                          status: doc['shopStatus'],
                        ),
                      )).toList(),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({
    Key key,
    @required this.text1,
    @required this.text2,
  }) : super(key: key);
  final text1, text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: Container(
        height: getProportionateScreenWidth(45),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: text1,
            hintText: text2,
            enabledBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(22)),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(22)),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
