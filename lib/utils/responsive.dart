import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

// Este tamaño funciona bien en mi diseño, tal vez necesite alguna personalización dependiendo de su diseño

  // Esto isMobile, isTablet, isDesktop ayúdanos más tarde
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // Si nuestro ancho es mayor a 1100 entonces lo consideramos un escritorio
    if (_size.width >= 1100) {
      return desktop;
    }
    // Si el ancho es menor a 1100 y mayor a 850 lo consideramos como tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet;
    }
    // O menos que lo llamamos móvil
    else {
      return mobile;
    }
  }
}