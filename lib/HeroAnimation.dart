import 'package:flutter/material.dart';

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Latihan Hero Animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondHero();
          }));
        },
        child: Hero(
          tag: 'Animated',
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/9757d496-239b-46c5-baea-6873cbfe9b3d/de743nr-87f9737c-7dd1-4896-844b-d31a3600e1fa.jpg/v1/fill/w_1192,h_670,q_70,strp/autumn_dreams_by_joeyjazz_de743nr-pre.jpg'),
                ),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.pink),
          ),
        ),
      ),
    );
  }
}

class SecondHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Latihan Hero Animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: "Animated",
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/9757d496-239b-46c5-baea-6873cbfe9b3d/de743nr-87f9737c-7dd1-4896-844b-d31a3600e1fa.jpg/v1/fill/w_1192,h_670,q_70,strp/autumn_dreams_by_joeyjazz_de743nr-pre.jpg'),
                ),
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ),
    );
  }
}
