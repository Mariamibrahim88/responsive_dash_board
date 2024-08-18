import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_imges.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({
    super.key,
  });

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  int selectedIndex = 0;
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'Dashboard', svgSrc: Assets.imagescategry2),
    DrawerItemModel(
        title: 'My Transaction', svgSrc: Assets.imagesMytransaction),
    DrawerItemModel(title: 'Statistics', svgSrc: Assets.imagesStatics),
    DrawerItemModel(title: 'Wallet Account', svgSrc: Assets.imagesWallet),
    DrawerItemModel(title: 'My Investments', svgSrc: Assets.imagesInvestment),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
                //print(selectedIndex);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DrawerItem(
              drawerItemModel: items[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
