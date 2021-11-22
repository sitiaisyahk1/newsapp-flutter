//style utk padding atau margin

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double edgeHome = 30;
double edgeDetail = 24;

//style utk font
TextStyle titleHome = GoogleFonts.poppins(
  color: Color(0xff091f33), fontWeight: FontWeight.w700,
  fontSize: 36
);

TextStyle titleArticle = GoogleFonts.poppins(
  color: Color(0xff091f33),
  fontWeight: FontWeight.w500
);
TextStyle titleArticleImgSlider = GoogleFonts.montserrat(
  color: Color(0xffffffff),
  fontSize: 36,
  fontStyle: FontStyle.normal
);
TextStyle descArticleImgSlider = GoogleFonts.montserrat(
  color: Color(0xffffffff),
  fontSize: 16,
  fontStyle: FontStyle.normal
);

TextStyle authorDateArticle = GoogleFonts.poppins(
  color: Colors.black.withOpacity(0.5),
  fontWeight: FontWeight.w500
);

TextStyle detailArticle = GoogleFonts.poppins(
  color: Color(0xff091f33),
  fontWeight: FontWeight.w400,
);

TextStyle categoryTitle = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w500
);