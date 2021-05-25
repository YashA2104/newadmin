import 'package:admin/screens/Document%20Verrification/components/document_body.dart';
import 'package:flutter/material.dart';
import 'package:admin/size_config.dart';

class DocumentVerification extends StatefulWidget {
  String GSTimg,ACTimg,PANimg,AADHARimg,docId;
  DocumentVerification({
    @required this.PANimg,
    @required this.GSTimg,
    @required this.ACTimg,
    @required this.AADHARimg,
    @required this.docId,
});
  static const routeName = '/document-verification';
  @override
  _DocumentVerificationState createState() => _DocumentVerificationState();
}

class _DocumentVerificationState extends State<DocumentVerification> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        elevation: 0,
        title: Text(
          'Documents',
          style: TextStyle(
            fontFamily: 'Muli',
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: DocumentBody(AADHARimg: widget.AADHARimg, ACTimg: widget.ACTimg, GSTimg: widget.GSTimg, PANimg: widget.PANimg,docId: widget.docId,),
    );
  }
}
