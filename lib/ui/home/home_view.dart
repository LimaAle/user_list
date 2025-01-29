import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_list/ui/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final HomeViewmodel controller= Get.find<HomeViewmodel>();

    return Scaffold(
      appBar: AppBar(title: Text("Lista de Usuários")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        if (controller.userList.isEmpty) {
          return Center(child: Text("Nenhum usuário encontrado."));
        }

        return RefreshIndicator(
           onRefresh: ()async{
            await controller.getUser();
           },
          child: ListView.builder(
          itemCount: controller.userList.length,
          itemBuilder: (context, index) {
            final user = controller.userList[index];
            return ListTile(
              leading: CircleAvatar(child: Text(user.name[0])),
              title: Text(user.name),
              subtitle: Text("Email: ${user.email}"),
              onTap: () {
                Get.toNamed('/detail',arguments: user.id);
              },
            );
          },
        ),);
      }),
    );
  }
}