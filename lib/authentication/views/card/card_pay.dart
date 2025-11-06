import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class CardPay extends StatefulWidget {
  const CardPay({super.key});

  @override
  State<CardPay> createState() => _CardPayState();
}

class _CardPayState extends State<CardPay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Container(
        height: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset('assets/Vector.png'),
                ),
                Gap(context.getWidth(0.24)),
                Text(
                  '₦800.00',
                  style: AppStyles.montserrat14xG.copyWith(
                    fontSize: 29,
                  ),
                ),
              ],
            ),
            Gap(20),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Merchant Name',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'VentriPay',
                  style: AppStyles.montserrat14Md.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  '₦800',
                  style: AppStyles.montserrat14Md.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Gap(context.getHeight(0.2)),
            MyButton(
              title: 'Pay',
              onPressed: () {},
              backgroundColor: Color(0xFF003366),
            ),
          ],
        ),
      ),
    );
  }
}
