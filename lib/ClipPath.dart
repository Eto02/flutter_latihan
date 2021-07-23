import 'package:flutter/material.dart';

class ClipPathApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan ClipPath'),
      ),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Image(
            width: 300,
            image: NetworkImage(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/9757d496-239b-46c5-baea-6873cbfe9b3d/de743nr-87f9737c-7dd1-4896-844b-d31a3600e1fa.jpg/v1/fill/w_1192,h_670,q_70,strp/autumn_dreams_by_joeyjazz_de743nr-pre.jpg'),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width, size.height * 0.75, size.width, size.width);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
