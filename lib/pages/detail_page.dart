import 'package:flutter/material.dart';
import 'package:plants_app/models/plant_model.dart';
import 'package:plants_app/theme.dart';

class DetailPage extends StatelessWidget {
  final Plant plants;
  const DetailPage({Key? key, required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height / 2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          plants.image,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor.withOpacity(0.2),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(
                          10.0,
                        ),
                        bottomRight: Radius.circular(
                          10.0,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plants.name,
                        style: defaultTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        '\$${plants.price}',
                        style: defaultTextStyle.copyWith(
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        'About',
                        style: defaultTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        plants.desc,
                        style: greyTextStyle,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Price',
                                style: defaultTextStyle.copyWith(
                                  fontSize: 16.0,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '\$${plants.price}',
                                style: defaultTextStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: greenColor,
                              fixedSize: const Size(140, 44),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Add to cart',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                    ),
                  ),
                  const LikeButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({
    Key? key,
  }) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border_outlined,
        color: isLiked ? Colors.pink : Colors.black,
      ),
    );
  }
}
