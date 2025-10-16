import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summer_flutter/authentication/views/identity/verify_dob.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class VerifyId extends StatefulWidget {
  const VerifyId({super.key});

  @override
  State<VerifyId> createState() => _VerifyIdState();
}

class _VerifyIdState extends State<VerifyId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back, size: 11),
                    Text(
                      'Back',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Gap(6),
                  ],
                ),
                Text(
                  'Verify your Identity',
                  style: AppStyles.redHat15,
                ),
                Gap(10),
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(width: 12),
                  //   shape: BoxShape.circle,
                  // ),
                  child: Icon(
                    Icons.circle_outlined,
                    fill: 1,
                    color: const Color.fromARGB(
                      255,
                      185,
                      184,
                      184,
                    ),
                  ),
                ),
                Gap(10),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name (as it appears on your official ID)',
                      style: AppStyles.montserrat16xG,
                    ),
                    Gap(10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color(0xFFF1F0F0),
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: Color(0xFFFCFCFC),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your full name',
                          hintStyle:
                              AppStyles.montserrat14S,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Gap(10),
                    Text(
                      'Gender',
                      style: AppStyles.montserrat16xG,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color(0xFFF1F0F0),
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: Color(0xFFFCFCFC),
                      ),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Gender',
                          hintStyle:
                              AppStyles.montserrat14S,
                        ),
                        items: ['Male', 'Female'].map((
                          item,
                        ) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (item) {},
                      ),
                    ),
                  ],
                ),
                Gap(context.getHeight(0.55)),
                SizedBox(
                  height: 40,
                  child: MyButton(
                    title: 'Continue',
                    backgroundColor: Color(0xFF003366),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const VerifyDob(),
                        ),
                      );
                    },
                    style: AppStyles.montserrat16Xl
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
