import 'package:flutter/cupertino.dart';
import '../Models/user_info_model.dart';
import 'card_details.dart';

class QuickInvoiceListView extends StatelessWidget {
  const QuickInvoiceListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

     List  items = [
      UserInfoModel(
          image: 'assets/images/Group.png',
          title: 'Madrani Andi',
          subTitle: 'Madraniadi20@gmail'),
      UserInfoModel(
          image: 'assets/images/Group.png',
          title: 'Madrani Andi',
          subTitle: 'Madraniadi20@gmail'),
      UserInfoModel(
          image: 'assets/images/Group.png',
          title: 'Madrani Andi',
          subTitle: 'Madraniadi20@gmail'),
    ];


     return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
            IntrinsicWidth(child: CardDetails(info: e)))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(
    //             info: items[index],
    //           ),
    //         );
    //       }),
    // );

  }
}
