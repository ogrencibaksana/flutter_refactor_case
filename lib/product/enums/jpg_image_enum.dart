import 'package:flutter/material.dart';

enum ImagePaths {
// ignore: constant_identifier_names
  modelY,
  // ignore: constant_identifier_names
  modelY_red,
  // ignore: constant_identifier_names
  modelY_yellow,
  // ignore: constant_identifier_names
  modelY_black
  
}

extension ImagePathsExtension on ImagePaths {
  String path() {
    return 'assets/images/jpg_images/$name.jpg';
  }

  DecorationImage toDecorationImage({double height = 24,BoxFit? fit}) {
    return DecorationImage(fit: BoxFit.cover,
      image: AssetImage(path())
    );
  }
}