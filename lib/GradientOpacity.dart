import 'package:flutter/material.dart';

class GradientOpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient Opacity'),
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.width));
          },
          blendMode: BlendMode.dstIn,
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
