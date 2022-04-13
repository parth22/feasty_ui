import 'package:feasty/const/color.dart';
import 'package:feasty/const/global_list.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2.5 + 30,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                    decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/image/png/cart_item.png',
                                  ),
                                  fit: BoxFit.fitWidth),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24))),
                          height: MediaQuery.of(context).size.height / 2.5,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      _builCounter(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _buildPizzaName(),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              _buildContainer(
                                  image: 'assets/image/png/delivery-man.png',
                                  name: 'Free'),
                              _buildContainer(
                                  image: 'assets/image/png/chronometer.png',
                                  name: '10-20min'),
                              _buildContainer(
                                  image: 'assets/image/png/star.png',
                                  name: '4.8'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Ingredients',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'PlayfairRegular'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          _buildIngredient(context),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('About',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: 'PlayfairRegular')),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                              'This special bffe Pizza uses special quiality'
                              'beef'
                              'with sliced tomatoes, cucumbers, vegetables,'
                              'lettuce'
                              'leaf, olive oil and more',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        const  SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color(0xffFFDD00),
                          Color(0xffFBB034),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(19)),
                  child: MaterialButton(
                    onPressed: () {},
                    child:const Text('Add to Cart (\$15.98)'),
                  ),
                ),
              ),
            ),
            _buildAppBar(context),
          ],
        ),
      ),
    );
  }

  Widget _buildIngredient(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: ingredientsList.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            width: 68,
            height: 80,
            decoration: BoxDecoration(
                color: const Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(19)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(ingredientsList[index]['image'].toString()),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  ingredientsList[index]['name'].toString(),
                  style: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'GothamMedium',
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainer({
    String? name,
    String? image,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: const Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(19)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image!),
          const SizedBox(
            width: 5,
          ),
          Text(name!,
              style: const TextStyle(
                fontFamily: 'GothamMedium',
                color: Colours.backColor,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }

  Widget _buildPizzaName() {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text('Veg. Pizza',
                style: TextStyle(
                    fontSize: 31,
                    fontFamily: 'PlayfairRegular',
                    color: Colours.backColor,
                    fontWeight: FontWeight.bold)),
            Text('Veg pizza and special sauce',
                style: TextStyle(
                  fontSize: 14,
                  color: Colours.backColor,
                ))
          ],
        ),
        const Spacer(),
        const Text(
          '\$',
          style: TextStyle(
              color: Color(0xffFBB034),
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
        const Text('7.99',
            style: TextStyle(fontSize: 31, fontWeight: FontWeight.w400))
      ],
    );
  }

  Widget _builCounter() {
    return Container(
      height: 70,
      width: 150,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: <Color>[
              Color(0xffFFDD00),
              Color(0xffFBB034),
            ],
          ),
          borderRadius: BorderRadius.circular(19)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              '-',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              maxRadius: 40,
              child: Text('2',
                  style: TextStyle(
                      fontSize: 31,
                      color: Colours.backColor,
                      fontWeight: FontWeight.w600)),
            ),
            Text(
              '+',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('assets/image/png/back_arrow.png'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('assets/image/png/hart.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
