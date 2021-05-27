import 'package:flutter/material.dart';
import 'package:admin/size_config.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ShopInfo extends StatelessWidget {
  final String status;
  final String shopName;
  final String shopAddress;
  final String imageText;
  ShopInfo({
    this.imageText,
    this.shopAddress,
    this.shopName,
    this.status,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(120),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              margin: EdgeInsets.all(getProportionateScreenWidth(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateScreenWidth(20)),
                    topRight: Radius.circular(getProportionateScreenWidth(20)),
                    bottomLeft:
                        Radius.circular(getProportionateScreenWidth(20)),
                    bottomRight:
                        Radius.circular(getProportionateScreenWidth(20))),
                /*      child: Image.network(
                  imageText,
                  height: getProportionateScreenHeight(200),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),*/
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)),
              child: Text(status,
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: Colors.orange.shade900)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)),
              child: Text(
                shopName,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)),
              child: Text(
                shopAddress,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}




// class ShopInfo extends StatefulWidget {
//   final String status;
//   final String shopName;
//   final String shopAddress;
//   final String imageText;
//   ShopInfo({
//     this.imageText,
//     this.shopAddress,
//     this.shopName,
//     this.status,
//   });

//   @override
//   _ShopInfoState createState() => _ShopInfoState();
// }

// class _ShopInfoState extends State<ShopInfo> {
//   RefreshController _refreshController =
//       RefreshController(initialRefresh: false);

//   void _onLoading() async {
//     setState(() {});
//     _refreshController.loadComplete();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SmartRefresher(
//       controller: _refreshController,
//       enablePullDown: true,
//       child: Container(
//         width: double.infinity,
//         height: getProportionateScreenHeight(350),
//         child: Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 elevation: 4,
//                 margin: EdgeInsets.all(getProportionateScreenWidth(10)),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(getProportionateScreenWidth(20)),
//                       topRight:
//                           Radius.circular(getProportionateScreenWidth(20)),
//                       bottomLeft:
//                           Radius.circular(getProportionateScreenWidth(20)),
//                       bottomRight:
//                           Radius.circular(getProportionateScreenWidth(20))),
//                   child: widget.imageText.isEmpty
//                       ? Image.asset(
//                           'assets/images/splash_1.png',
//                           height: getProportionateScreenHeight(
//                             250,
//                           ),
//                           width: getProportionateScreenWidth(300),
//                         )
//                       : Image.network(
//                           widget.imageText,
//                           height: getProportionateScreenHeight(250),
//                           width: getProportionateScreenWidth(300),
//                           fit: BoxFit.cover,
//                         ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: getProportionateScreenWidth(15)),
//                 child: Text(widget.status,
//                     style: TextStyle(
//                         fontSize: getProportionateScreenWidth(15),
//                         color: Colors.orange.shade900)),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: getProportionateScreenWidth(15)),
//                 child: Text(
//                   widget.shopName,
//                   style: TextStyle(
//                       fontSize: getProportionateScreenWidth(14),
//                       color: Colors.black),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: getProportionateScreenWidth(15)),
//                 child: Text(
//                   widget.shopAddress,
//                   style: TextStyle(
//                       fontSize: getProportionateScreenWidth(14),
//                       color: Colors.black),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//         ),
//       ),
//     );
//   }
// }
