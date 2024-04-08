import 'package:app_book/apps/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/item_setting_page.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Mục quản trị",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.menu),
        //   )
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ItemAdminPage(
              nameItem: "Thể loại",
              ontap: () {
                Get.toNamed(RouterName.adminCategory);
              },
            ),
            ItemAdminPage(
              nameItem: "Sách",
              ontap: () {
                Get.toNamed(RouterName.adminBook);
              },
            ),
            ItemAdminPage(
              nameItem: "Người dùng",
              ontap: () {
                Get.toNamed(RouterName.adminManageUser);
              },
            ),
            ItemAdminPage(
              nameItem: "Tạo thông báo",
              ontap: () {
                Get.toNamed(RouterName.notificationSend);
              },
            ),
            ItemAdminPage(
              nameItem: "Chat",
              ontap: () {
                Get.toNamed(RouterName.listRoomChat);
              },
            ),
            ItemAdminPage(
              nameItem: "Slider quảng cáo",
              ontap: () {
                Get.toNamed(RouterName.adminSliderPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
