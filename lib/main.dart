import 'package:flutter/material.dart';
import 'package:flutter_apple_store_ui/style_color.dart';

import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  List<ProductModel> productModel = [
    ProductModel(
        id: '1',
        name: 'iPhone 13 Pro',
        detail: 'pro camera ,pro display',
        price: '499',
        image: 'iphone.png'),
    ProductModel(
        id: '2',
        name: 'iMask Pro',
        detail: 'coming soon',
        price: '999',
        image: 'imask.png'),
    ProductModel(
        id: '3',
        name: 'Apple Watch',
        detail: 'pro camera ,pro display',
        price: '399',
        image: 'watch.png'),
    ProductModel(
        id: '4',
        name: 'AirPods Pro',
        detail: 'pro battery,pro sound',
        price: '249',
        image: 'airpod.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      color: backGroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backGroundColor,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_rounded,
                      color: iconColor,
                      size: width * 0.08,
                    ),
                    Image.asset(
                      'logo.png',
                      width: width * 0.07,
                    ),
                    Icon(
                      Icons.shopping_basket_outlined,
                      color: iconColor,
                      size: width * 0.08,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(width * 0.1),
                child: const Text(
                  'Apple Store',
                  style: bigTitleStyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Special Offer',
                      style: titleStyle,
                    ),
                    Text(
                      'i Phone',
                      style: unSelectTitleStyle,
                    ),
                    Text(
                      'i Pad',
                      style: unSelectTitleStyle,
                    ),
                    Text(
                      'Watch',
                      style: unSelectTitleStyle,
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.all(width * 0.03),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: productModel.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: width * 0.05,
                    mainAxisSpacing: width * 0.04,
                  ),
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: iconColor, width: 2),
                      borderRadius: BorderRadius.circular(width * 0.06),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          productModel[index].image,
                          width: width * 0.3,
                          height: height * 0.15,
                        ),
                        Text(
                          productModel[index].name,
                          style: nameStyle,
                        ),
                        Text(
                          productModel[index].detail,
                          style: descriptionStyle,
                        ),
                        Text(
                          '\$${productModel[index].price}',
                          style: titleStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    String description =
        'IMask consists of two independent layers: model and viewModel layer contains all masking facilities which can be used independently without UI.View layer is a glue between UI element and model, it connects listeners and controls changes in both directions';
    return Container(
      color: backGroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backGroundColor,
          body: Column(
            children: [
              SizedBox(height: height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_rounded,
                    color: iconColor,
                    size: width * 0.08,
                  ),
                  Image.asset('logo.png', width: width * 0.08),
                  Icon(
                    Icons.shopping_basket_outlined,
                    color: iconColor,
                    size: width * 0.08,
                  ),
                ],
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Image.asset(
                      'imask.png',
                      height: height * 0.35,
                      width: width,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(width * 0.01),
                          width: width * 0.03,
                          height: height * 0.015,
                          decoration: BoxDecoration(
                            color: detailBackGroundColor,
                            borderRadius: BorderRadius.circular(width),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(width * 0.01),
                          width: width * 0.03,
                          height: height * 0.015,
                          decoration: BoxDecoration(
                            color: iconColor,
                            borderRadius: BorderRadius.circular(width),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(width * 0.01),
                          width: width * 0.03,
                          height: height * 0.015,
                          decoration: BoxDecoration(
                            color: iconColor,
                            borderRadius: BorderRadius.circular(width),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(width * 0.01),
                          width: width * 0.03,
                          height: height * 0.015,
                          decoration: BoxDecoration(
                            color: iconColor,
                            borderRadius: BorderRadius.circular(width),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: detailBackGroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(width * 0.08),
                      topLeft: Radius.circular(width * 0.08),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(width * 0.08),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'i Mask',
                              style: bigTitleStyle,
                            ),
                            Text(
                              '\$422',
                              style: bigTitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: Text(
                          description,
                          style: descriptionStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Pre-order',
                                style: descriptionStyle,
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: buttonColor,
                                fixedSize: Size(width * 0.4, height * 0.06),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.04),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: width * 0.05,
                                  height: height * 0.025,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(width),
                                  ),
                                ),
                                Container(
                                  width: width * 0.05,
                                  height: height * 0.025,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(width),
                                  ),
                                ),
                                Container(
                                  width: width * 0.05,
                                  height: height * 0.025,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(width),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
