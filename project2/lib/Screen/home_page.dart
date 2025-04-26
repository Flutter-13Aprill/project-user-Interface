import 'package:flutter/material.dart';
import 'package:project2/core/text/app_text.dart';
import 'package:project2/widget/Container_linear_gradient.dart';
import 'package:project2/widget/custom_container.dart';
import 'package:project2/widget/custom_network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppText.appBarTitle)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
              bottom: 24,
              left: 16,
              right: 16,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomNetworkImage(),
                ContainerLinearGradient(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    AppText.imgText,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
          ),
          CustomContainer(
            height: 185,
            width: 380,
            borderRadius: 12,
            widget: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                AppText.containerText,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),

          SizedBox(height: 180),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text(AppText.buttonText)),
              SizedBox(width: 20),

              CustomContainer(
                height: 50,
                width: 77.4,
                borderRadius: 16,
                widget: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.photo_camera_outlined),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
