// ignore_for_file: must_be_immutable

part of 'image.dart';

class KeykatImages extends KeykatImage {
  KeykatImages(
      {super.key,
      super.svg,
      super.size,
      super.color,
      super.width,
      super.height,
      super.colorBlendMode});

  factory KeykatImages.imagesImgLogo({
      double? size, 
      Color? color,
      double? width, 
      double? height, 
      BlendMode? colorBlendMode}) {
    return KeykatImages(
      svg: 'packages/design/assets/images/img_logo.svg',
      size: size,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
    );
  }
}
