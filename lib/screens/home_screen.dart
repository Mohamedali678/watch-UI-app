import 'package:flutter/material.dart';
import 'package:watch_brand_app/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu_outlined,
                      size: 30, color: Colors.white),
                  Row(
                    children: [
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
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12),
              child: Text(
                "Featured".toUpperCase(),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Products".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 22,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffffd691),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wishdoit".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Fashion watch man,\nvery brand model\npretty aswesome",
                            style: TextStyle(fontSize: 19),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          MaterialButton(
                            minWidth: 30,
                            onPressed: () {},
                            color: Colors.white,
                            child: Row(
                              children: const [
                                Text("See Size"),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_forward)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 0,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen("images/decker.png", "Wishdoit"),
                            ),
                          );
                        },
                        child: Image(
                          height: 180,
                          width: 190,
                          fit: BoxFit.fill,
                          image: AssetImage("images/wishdoit.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 12),
              child: Text(
                "Trending".toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Products".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        letterSpacing: 2.4,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 22,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 250,
                                width: 250,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xffffd691),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailScreen(
                                                "images/decker.png", "decker"),
                                          ),
                                        );
                                      },
                                      child: Image(
                                        height: 220,
                                        image: AssetImage("images/decker.png"),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 1,
                                      child: Container(
                                        height: 40,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Color(0xffd7A859),
                                            shape: BoxShape.circle),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.favorite,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text("Decker Watch".toUpperCase(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.6))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 250,
                                width: 250,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                decoration: BoxDecoration(
                                  color: const Color(0xffffd691),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailScreen(
                                                "images/grant.png", "grant"),
                                          ),
                                        );
                                      },
                                      child: Image(
                                        height: 220,
                                        image: AssetImage("images/grant.png"),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 1,
                                      child: Container(
                                        height: 40,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffd7A859),
                                            shape: BoxShape.circle),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.favorite,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text("Grant Watch".toUpperCase(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.6))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
