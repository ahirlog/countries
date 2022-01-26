import 'package:countries/elements/custom_slider_navigation.dart';
import 'package:countries/screens/country_screen.dart';
import 'package:countries/screens/region_screen.dart';
import 'package:flutter/material.dart';

class RegionScreenBody extends StatelessWidget {
  const RegionScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: regionName.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                CustomSliderNavigation(
                    page: CountryScreen(
                        name: regionName[index], color: regionColors[index])),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Theme.of(context).cardColor,
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Row(
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: regionColors[index],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8)),
                    SizedBox(width: 25),
                    Text(regionName[index],
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
