
import 'package:flutter/material.dart';

class IngeMathLogo extends StatelessWidget {

  final double size;

  const IngeMathLogo({
    super.key,
    this.size = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        
        _CustomIcon(size: size),
        
      ],
    );
  }
}

class _CustomIcon extends StatelessWidget {
  const _CustomIcon({
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      
      child: Padding(
        padding: EdgeInsets.all(size * 0.01),
        child: Container(
          
          child: Image.asset("assets/images/LogoC.png"),
          
          
        ),
      ),
    );
  }
}

