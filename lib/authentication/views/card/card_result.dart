import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:summer_flutter/authentication/views/dashboard/dashboard_view.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class CardResult extends StatefulWidget {
  const CardResult({super.key});

  @override
  State<CardResult> createState() => _CardResultState();
}

class _CardResultState extends State<CardResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 36,
        leading: Container(
          decoration: BoxDecoration(
            color: Color(0xFFE8EAED),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Color(0xFF003366),
          ),
        ),
        title: Text('Card Application'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Successful',
                  style: AppStyles.montserrat16Md.copyWith(
                    fontSize: 18,
                  ),
                ),
                Gap(context.getHeight(0.2)),
                Image.asset('assets/success.png'),
                Gap(context.getHeight(0.025)),
                Text(
                  'Congratulations!',
                  style: AppStyles.montserrat14xG.copyWith(
                    color: Color(0xFF003366),
                  ),
                ),
                Gap(context.getHeight(0.01)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                  ),
                  child: Text(
                    'You’ve successfully created your VentriPay virtual card',
                    style: AppStyles.redHat16,
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(context.getHeight(0.36)),
                MyButton(
                  title: 'GO BACK TO HOME',
                  backgroundColor: Color(0xFF003366),
                  style: AppStyles.montserrat14Md.copyWith(
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DashboardView(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
