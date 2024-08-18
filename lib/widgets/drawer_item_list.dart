import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_imges.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemList extends StatelessWidget {
  const DrawerItemList({
    super.key,
  });

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', svgSrc: Assets.imagescategry2),
    DrawerItemModel(
        title: 'My Transaction', svgSrc: Assets.imagesMytransaction),
    DrawerItemModel(title: 'Statistics', svgSrc: Assets.imagesStatics),
    DrawerItemModel(title: 'Wallet Account', svgSrc: Assets.imagesWallet),
    DrawerItemModel(title: 'My Investments', svgSrc: Assets.imagesInvestment),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(drawerItemModel: items[index]),
        );
      },
    );
  }
}
