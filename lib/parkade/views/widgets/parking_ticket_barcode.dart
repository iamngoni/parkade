//
//  parking_ticket_barcode
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import 'clip_shadow.dart';
import 'ticker_clipper.dart';

class ParkingTicketBarcode extends StatelessWidget {
  const ParkingTicketBarcode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return ClipShadow(
          clipper: TicketClipper(
            const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            BorderRadius.zero,
          ),
          boxShadow: const [],
          child: Container(
            height: sy(75),
            padding: EdgeInsets.only(
              left: sx(60),
              right: sx(60),
              top: sy(15),
              bottom: sy(15),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
            child: BarcodeWidget(
              barcode: Barcode.code128(),
              data: '97811195508222343',
              drawText: false,
              errorBuilder: (context, error) => Center(child: Text(error)),
            ),
          ),
        );
      },
    );
  }
}
