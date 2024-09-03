import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:ingemath/presentation/widgets/widgets.dart';

import '../widgets/ingemath_logo.dart';
import '../widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 4),
          const IngeMathLogo(size: 200),
          Text(
            "COVENANT",
            style: GoogleFonts.crimsonPro().copyWith(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFFBF45),
                letterSpacing: 10,
                height: 0),
          ),
          Text(
            "MONEY",
            style: GoogleFonts.crimsonPro().copyWith(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                color: const Color(0xFFFFBF45),
                letterSpacing: 3,
                height: 0),
          ),
          const Spacer(flex: 2),
          SizedBox(
            height: 50,
            child: CustomFilledButton(
              buttonColor: const Color(0xFFF90000),
              onPressed: () => context.push("/covenant_ATM"),
              child: const Text("Ingresar", style: TextStyle(fontSize: 24)),
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
