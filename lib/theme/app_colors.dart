import 'package:flutter/material.dart';

abstract class AppColors{
  Color get brow;
  Color get yellow;
  Color get grey;
  Color get green;
}

class AppColorDefault implements AppColors{

  @override
  Color get brow => Color(0xFF312A06);

  @override
  Color get yellow => Color(0xFFFFD900);

  @override
  Color get grey => Color(0xFFECECEF);

  @override
  Color get green => Color(0xFF1C7134);
}