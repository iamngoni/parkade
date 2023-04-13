//
//  search_text_field
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: sx(20),
            vertical: sy(2),
          ),
          decoration: BoxDecoration(
            color: ParkadeColors.caramelWhite,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Row(
            children: [
              Icon(
                CupertinoIcons.search,
                size: sy(15),
                color: Colors.black38,
              ),
              SizedBox(
                width: sx(10),
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search parking, car insurance ...',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: sy(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
