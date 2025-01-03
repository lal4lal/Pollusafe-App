import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pollusafe_app/src/constant/constant.dart';
import 'package:pollusafe_app/src/constant/themes/sizes.dart';

class DetailedInformation extends StatelessWidget {
  final String humudity;
  final String pm10;
  final String wind;
  final String pressure;
  const DetailedInformation({
    required this.humudity,
    required this.pm10,
    required this.wind,
    required this.pressure,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap.h4,
            Container(
              padding: EdgeInsets.all(SizeApp.h12),
              width: double.infinity,
              // height: 80,
              decoration: BoxDecoration(
                  color: ColorApp.darkBlue,
                  borderRadius: BorderRadius.circular(SizeApp.h12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReportPerIndicator(
                    idx: humudity.toString(),
                    title: "Humidity",
                  ),
                  ReportPerIndicator(
                    idx: pm10.toString(),
                    title: "PM10",
                  ),
                  ReportPerIndicator(
                    idx: wind.toString(),
                    title: "Wind",
                  ),
                  const ReportPerIndicator(
                    idx: "10",
                    title: "Pressure",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReportPerIndicator extends StatelessWidget {
  final String idx;
  final String title;
  const ReportPerIndicator({
    required this.idx,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeApp.customHeight(70),
      height: SizeApp.h56,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            idx,
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: ColorApp.darkBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -2), // Move the text upwards
            child: Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: SizeApp.h12,
                color: ColorApp.darkBlue,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
