import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;

  const CustomBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF0A1E36),
            width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            
            const Align(alignment: Alignment.topRight, child: _CustomLines()),
            const Align(
              alignment: Alignment.bottomLeft,
              child:  _CustomLines2(),
            ),
            child,
            const Align(alignment: Alignment.topRight, child: _CustomLines()),
            const Align(
              alignment: Alignment.bottomLeft,
              child: _CustomLines(),
            ),
            child,
            const Align(alignment: Alignment.topRight, child: _CustomLines()),
            const Align(
              alignment: Alignment.bottomLeft,
              child: _CustomLines(),
            ),
            child
          ],
        ),
      ),
    );
  }
}

class _CustomLines extends StatelessWidget {
  const _CustomLines();

  @override
  Widget build(BuildContext context) {
    
    return Image.asset("assets/custom/custom-lines-orange.png");
  }
}
class _CustomLines2 extends StatelessWidget {
  const _CustomLines2();

  @override
  Widget build(BuildContext context) {
    
    return Image.asset("assets/custom/custom-lines-blue.png");
  }
}
