import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  // const DetailScreen({Key? key}) : super(key: key);

  final image;
  final name;

  DetailScreen(this.image, this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(color: Theme.of(context).primaryColor),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 450,
                    decoration: const BoxDecoration(
                        color: Color(0xffffd691),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(82))),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 90,
              right: 10,
              child: Image(
                height: 300,
                width: 300,
                image: AssetImage(image),
              ),
            ),
            Positioned(
              top: 90,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Brand".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16, color: Theme.of(context).primaryColor),
                  ),
                  Text(
                    "Hilfiger".toUpperCase(),
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "starp".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16, color: Theme.of(context).primaryColor),
                  ),
                  Text(
                    "sillcone".toUpperCase(),
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "color".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16, color: Theme.of(context).primaryColor),
                  ),
                  Text(
                    "rose gold".toUpperCase(),
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "warrant".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16, color: Theme.of(context).primaryColor),
                  ),
                  Text(
                    "2 years".toUpperCase(),
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    size: 40,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back,
                          size: 30, color: Colors.white)),
                  Row(
                    children: const [
                      Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.shopping_cart_sharp,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "trending products".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                  ),
                  Text(
                    "${name} Watch".toUpperCase(),
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.2,
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                  ),
                  Text(
                    "\$300".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 23, letterSpacing: 2.2, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et pretium felis. Mauris vulputate scelerisque elementum. Fusce nec orci elit. Nullam sit amet dui maximus, varius erat at, pellentesque ligula. Morbi pretium ipsum vel consequat facilisis. Morbi vel ante ut tortor porttitor tristique sit amet at est. Donec a pharetra nibh, ut aliquam leo. In accumsan ante sed accumsan viverra. Nam efficitur enim massa, eget egestas eros malesuada at. Duis molestie suscipit justo in sodales. Vivamus luctus elit non est tincidunt bibendum. Aenean hendrerit magna ut neque malesuada gravida.",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 12),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          MaterialButton(
            height: 60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            minWidth: 290,
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            child: Text(
              "add to cart".toUpperCase(),
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).primaryColor,
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.red, size: 40)),
          )
        ]),
      ),
    );
  }
}
