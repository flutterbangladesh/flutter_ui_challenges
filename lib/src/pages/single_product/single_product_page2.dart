import 'package:flutter/material.dart';

class SingleProductPage2 extends StatefulWidget {
  @override
  _SingleProductPage2State createState() => _SingleProductPage2State();
}

class _SingleProductPage2State extends State<SingleProductPage2> {
  bool fav = false;
  List<String> _imageURL = [
    'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto/oyhemtbkghuegy9gpo0i/joyride-run-flyknit-running-shoe-sqfqGQ.jpg',
    'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto/e6704849-b556-4b6a-adf2-5264ef909a6b/mx-720-818-younger-older-shoe-T8N7vZ.jpg',
    'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto/1ad64451-9ef5-42c5-9c48-d5bee7a736a8/air-max-97-big-kids-shoe-cTXsh6.jpg',
  ];
  int _currentIndex = 0;
  int _currentSize = 2;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.only(
                    left: width * .05,
                    right: width * .05,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                20,
                              ),
                              bottomRight: Radius.circular(
                                20,
                              ),
                            ),
                            child: Container(
                              height: height * .35,
                              margin: EdgeInsets.only(bottom: 50.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    _imageURL[_currentIndex],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 20.0,
                                    spreadRadius: .2,
                                    offset: Offset(
                                      0.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                    20,
                                  ),
                                  bottomRight: Radius.circular(
                                    20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 5,
                            bottom: 50,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  fav = !fav;
                                });
                              },
                              icon: Icon(
                                fav ? Icons.favorite : Icons.favorite_border,
                                size: 30,
                                color: Colors.red[300],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: height * .1,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _imageURL.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                width: height * .1,
                                height: height * .1,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red[300],
                                    width: 2,
                                    style: index == _currentIndex
                                        ? BorderStyle.solid
                                        : BorderStyle.none,
                                  ),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      _imageURL[index],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 35,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Men's Shoe",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Nike Killshot 2 Leather",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$90.00",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: height * .1,
                              alignment: Alignment.center,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _currentSize = index;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor:
                                                _currentSize == index
                                                    ? Colors.red[300]
                                                    : Colors.white,
                                            child: Icon(
                                              Icons.pets,
                                              color: _currentSize == index
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            (index + 7).toString(),
                                            style: TextStyle(
                                              color: _currentSize == index
                                                  ? Colors.red[300]
                                                  : Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20.0),
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                      color: Colors.red[300],
                                    ),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.red[300],
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: FlatButton(
          padding: EdgeInsets.all(0),
          color: Colors.red[300],
          onPressed: () {},
          child: Text(
            'Buy Now',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
