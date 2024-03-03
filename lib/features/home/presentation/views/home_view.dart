import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:locus/core/widgets/appbar.dart';
import 'package:locus/core/widgets/custom_drawer.dart';
import 'package:locus/features/home/data/models/model1.dart';
import 'package:locus/features/home/presentation/logic/news_service.dart';
import 'package:locus/features/home/presentation/views/widgets/custom_search_field.dart';

import 'widgets/custom_news_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<NewsModel> newsList = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    newsList = await NewsService().getNews();
    isLoading = false;
    setState(() {
      log(newsList.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/background.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          key: scaffoldKey,
          appBar: CustomizedAppBar(sKey: scaffoldKey, isNotification: true),
          drawer: const CustomizedDrawer(),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                const CustomSearchField(),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Latest News',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'JetBrains Mono',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: newsList.length,
                          itemBuilder: (context, index) {
                            return NewsItem(
                              newsModel: newsList[index],
                            );
                          }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
