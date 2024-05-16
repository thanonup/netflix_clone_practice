import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix_clone_practice/beans/search_bean.dart';
import 'package:netflix_clone_practice/common/utils.dart';
import 'package:netflix_clone_practice/services/api_services.dart';

class SearchScreenView extends StatefulWidget {
  const SearchScreenView({super.key});

  @override
  State<SearchScreenView> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreenView> {
  TextEditingController searchContreoller = TextEditingController();
  ApiServices apiServices = ApiServices();

  SearchBean? searchBean;

  void searchMoive(String query) {}

  @override
  void dispose() {
    searchContreoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var data = searchBean?.results;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            CupertinoSearchTextField(
              padding: const EdgeInsets.all(10),
              controller: searchContreoller,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: Icon(Icons.cancel, color: Colors.grey),
              style: const TextStyle(color: Colors.white),
              backgroundColor: Colors.grey.withOpacity(0.3),
              onChanged: (value) {
                if (value.isEmpty) {
                } else {
                  // searchMoive(searchContreoller.text);
                  apiServices
                      .getSearchedMovie(searchContreoller.text)
                      .then((result) {
                    setState(() {
                      searchBean = result;
                    });
                  });
                }
              },
            ),
            searchBean == null
                ? const SizedBox.shrink()
                : GridView.builder(
                    shrinkWrap: true,
                    itemCount: data?.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 5,
                            childAspectRatio: 1.2 / 2),
                    itemBuilder: (context, index) {
                      return Column(children: [
                        CachedNetworkImage(
                          imageUrl: "${imageUrl}${data?[index].backdropPath}",
                          height: 170,
                        )
                      ]);
                    })
          ],
        ),
      )),
    );
  }
}
