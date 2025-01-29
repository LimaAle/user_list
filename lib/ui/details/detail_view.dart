import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_list/ui/details/detail_viewmodel.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailViewmodel controller = Get.find<DetailViewmodel>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do Usuário"),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        final detail = controller.userDetail.value!;

        // Exibe os detalhes do usuário
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 50,
                  child: Text(
                    detail.user.name[0],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight
                          .bold, 
                    ),
                  )),
              Text(
                'Nome: ${detail.user.name}',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Endereço:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Rua: ${detail.street}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Cidade: ${detail.city}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Estado: ${detail.state}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'País: ${detail.country}',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        );
      }),
    );
  }
}
