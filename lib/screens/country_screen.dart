// ignore_for_file: unused_import, prefer_typing_uninitialized_variables, deprecated_member_use

import 'dart:convert';
import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:countries/elements/custom_slider_navigation.dart';
import 'package:countries/model/model_class.dart';
import 'package:countries/screens/country_details_screen.dart';
import 'package:countries/screens/region_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CountryScreen extends StatefulWidget {
  final String name;
  final MaterialColor color;

  const CountryScreen({Key? key, required this.name, required this.color})
      : super(key: key);

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
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
      backgroundColor: widget.color.shade200,
      appBar: AppBar(
        title: Text(widget.name),
        iconTheme: const IconThemeData(),
        backgroundColor: widget.color.shade200,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 0.0, left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: FutureBuilder(
                  future: getCountry(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          if (widget.name ==
                              data[index]['continents'][0].toString()) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  CustomSliderNavigation(
                                    page: CountryDetailsScreen(
                                        name: data[index]['name']['common']
                                            .toString(),
                                        flag: data[index]['flags']['png']
                                            .toString(),
                                        index: data[index],
                                        color: widget.color),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    color: widget.color.shade100,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .primaryColorLight,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: CachedNetworkImage(
                                          imageUrl: data[index]['flags']['png']
                                              .toString(),
                                          height: 80,
                                          width: 140,
                                          fit: BoxFit.fill,
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                      ),
                                      const SizedBox(width: 25),
                                      Flexible(
                                        child: Text(
                                            data[index]['name']['common']
                                                .toString(),
                                            style: TextStyle(
                                              fontSize: 18,
                                              color:
                                                  Theme.of(context).accentColor,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return Container();
                          }
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
