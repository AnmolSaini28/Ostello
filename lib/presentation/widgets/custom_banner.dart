import 'package:flutter/material.dart';
import 'package:ostello/presentation/widgets/custom_button.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(
          255,
          237,
          237,
          1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
        ),
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Refer & Earn',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(
                      76,
                      76,
                      76,
                      1,
                    ),
                  ),
                ),
                Text(
                  'Cashback & Rewards',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(12, 12, 12, 1),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Invite Your Friends & Get Up to \n₹500 After Registration',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(
                      69,
                      69,
                      69,
                      1,
                    ),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 12),
                CustomButton(
                  width: 110,
                  text: "Invite",
                )
              ],
            ),
            Transform.translate(
              offset: const Offset(0, -12),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset(
                  'assets/images/BitcoinP2P-pana.png',
                  height: 160,
                  width: 160,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
