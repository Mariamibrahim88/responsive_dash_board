import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_imges.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(
                  image: Assets.imagesAvatar1,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com'),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),
            DrawerItemList(),
            //to use expanded widget i will use sliverfillremaining instead of sliver to box adapter
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          title: 'Setting system',
                          svgSrc: Assets.imagesSetting)),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          title: 'Logout account',
                          svgSrc: Assets.imagesLogout)),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ));
  }
}
