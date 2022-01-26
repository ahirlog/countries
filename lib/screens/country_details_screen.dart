// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:countries/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;
import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CountryDetailsScreen extends StatefulWidget {
  final String name;
  final MaterialColor color;
  final flag;
  final index;
  const CountryDetailsScreen(
      {Key? key,
      required this.name,
      required this.flag,
      this.index,
      required this.color})
      : super(key: key);

  @override
  State<CountryDetailsScreen> createState() => _CountryDetailsScreenState();
}

class _CountryDetailsScreenState extends State<CountryDetailsScreen> {
  var data;

  Future<void> getCountry() async {
    var isCacheExist =
        await APICacheManager().isAPICacheKeyExist("API_Country");
    if (!isCacheExist) {
      final response =
          await http.get(Uri.parse('https://restcountries.com/v3.1/all'));

      if (200 == response.statusCode) {
        APICacheDBModel cacheDBModel =
            APICacheDBModel(key: "API_Country", syncData: response.body);

        await APICacheManager().addCacheData(cacheDBModel);

        data = jsonDecode(response.body.toString());
      } else {}
    } else {
      var cacheData = await APICacheManager().getCacheData("API_Country");
      data = jsonDecode(cacheData.syncData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color.shade100,
      appBar: AppBar(
        title: Text(widget.name),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            CachedNetworkImage(imageUrl: widget.flag).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      widget.name.text.xl4
                          .color(context.accentColor)
                          .bold
                          .make()
                          .pSymmetric(h: 16),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          CustomRichText(
                            heading: 'Country Code',
                            value: (widget.index['idd']['root'] != null)
                                ? widget.index['idd']['root'].toString() +
                                    widget.index['idd']['suffixes'][0]
                                        .toString()
                                : 'Not Available',
                          ),
                          SizedBox(height: 5),
                          CustomRichText(
                            heading: 'Capital',
                            value: (widget.index['capital'] != null)
                                ? widget.index['capital'][0].toString()
                                : 'Not Available',
                          ),
                          SizedBox(height: 5),
                          CustomRichText(
                            heading: 'Currency',
                            value: (widget.index['currencies'] != null)
                                ? widget.index['currencies'].keys.toString()
                                : 'Not Available',
                          ),
                          SizedBox(height: 5),
                          CustomRichText(
                            heading: 'Dialing Code',
                            value: (widget.index['idd']['root'] != null)
                                ? widget.index['idd']['root'].toString() +
                                    widget.index['idd']['suffixes'][0]
                                        .toString()
                                : 'Not Available',
                          ),
                          SizedBox(height: 5),
                          CustomRichText(
                            heading: 'Population',
                            value: (widget.index['population'] != null)
                                ? widget.index['population'].toString()
                                : 'Not Available',
                          ),
                          SizedBox(height: 5),
                          CustomRichText(
                            heading: 'Demonym',
                            value: (widget.index['demonyms'] != null)
                                ? widget.index['demonyms']['eng']['m']
                                    .toString()
                                : 'Not Available',
                          ),
                          SizedBox(height: 5),
                        ],
                      )
                    ],
                  ).py64(),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
