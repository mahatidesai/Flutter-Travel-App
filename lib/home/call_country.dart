import 'package:travel_app/country/india.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/country/india.dart';

call_country(BuildContext context, String text) {
  switch (text) {
    case "INDIA":
      Navigator.push(context, MaterialPageRoute(builder: (context) => india()));
      break;
  // Add more cases for other countries if needed
    default:
    // Handle other cases here
      break;
  }
}
